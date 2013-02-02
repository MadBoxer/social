class LoginController < PublicController
  def index
    @user = User.new
  end
  
  def authorize
    @user = User.where(:email => params[:user][:email]).where(:password => params[:user][:password]).first
    if @user
      sess = Session.where(:session_id => request.session_options[:id]).first
      sess.shash = @user.user_hash
      sess.save
      session[:user_id] = @user.id
      cookies[:sid] = { :value => @user.user_hash, :expires => 1.hour.from_now, :path => '/' }
      cookies[:key] = { :value => Digest::MD5.hexdigest(@user.email.to_s + @user.password.to_s), :expires => 1.hour.from_now, :path => '/' }
      redirect_to :controller => :user, :action => :show, :id => @user.id
    else
      flash[:notice] = 'Incorrect email or password'
      redirect_to :back
    end
  end
  
  def unlogin
    cookies.delete :sid
    cookies.delete :key
    session = nil
    redirect_to :login
  end
  
  def register
    #@mail = UserMailer.registration_email#.deliver
    @user = User.new
  end
  
  def user_added
    if flash[:notice]
      render :template => 'shared/_message', :locals => {:text => flash[:notice]}
      redirect_to
    else
      redirect_to :action => :register
    end
  end
  
  def activate_user
    unless params[:email] && params[:key]
      #flash[:notice] = 'Ссылка недействительна.'
      render :template => 'shared/_message'
      return
    end
    user = User.where(:email => params[:email]).first
    if user && Digest::MD5.hexdigest(user.email.to_s + user.password.to_s + user.user_hash.to_s) == params[:key]
      user.active = 1
      user.save
      redirect_to :controller => :user, :action => :show, :id => user.id
    else
      #flash[:notice] = 'Ссылка недействительна1.'
      render :template => 'shared/_message'
    end
  end
  
  def add_user
    @user = User.register_prepare(params[:user])
    if @user.save
      redirect_to '/id'+@user.id.to_s
      #(@user.email, @user.hash, @user.password).deliver
      #flash[:notice] = 'На указанный адрес выслано письмо с подтверждением регистрации.'
      #redirect_to :action => :user_added
    else
      render 'register'
    end
  end
end