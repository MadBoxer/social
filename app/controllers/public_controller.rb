class PublicController < ApplicationController
  before_filter :check_auth, :except => :unlogin
  
  layout 'public'
  def check_auth
    if cookies[:sid]
      @sess = Session.where(:shash => cookies[:sid]).first
      if @sess.session_id && !@sess.shash.empty?
        user = User.find_by_user_hash(@sess.shash)
        if user
          unless Digest::MD5.hexdigest(user.email.to_s + Digest::MD5.hexdigest(user.password.to_s)) == cookies[:key]
            if controller_name != 'login'
              redirect_to :login
            end
          else
            @user = user
            if controller_name == 'login'
              redirect_to :controller => :user, :action => :show, :id => user.id
            end
          end
        else
          if controller_name != 'login' then redirect_to :login end
        end
      else
        if controller_name != 'login' then redirect_to :login end
      end
    else
      if controller_name != 'login' then redirect_to :login end
    end

  end
  
end
