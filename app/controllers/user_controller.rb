class UserController < PublicController
  def new_album
    if params[:commit] && params[:album][:name]
      args = Hash.new
      args[:name] = params[:album][:name]
      args[:announce] = params[:album][:announce]
      args[:description] = params[:album][:description]
      @album = UserAlbum.new_based_on(args)
      @user.albums.push(@album)
      redirect_to :back
    else
      @album = UserAlbum.new
    end
  end
  
  def get_friends
    @friends = @user.friends
  end
  
  def get_dialogs
    @data = Hash.new
    @data[:dialogs] = @user.dialogs
    @data[:last_messages] = []
    @data[:dialogs].each_with_index do |d, i|
      @data[:last_messages].push(@user.last_dialog_message(d.reciever_id))
    end
  end

  def edit
    @view = render_to_string(:partial => params[:act] ? 'user/settings/'+params[:act] : 'user/settings/main', :locals => {:user => @user}).html_safe
  end
  
  def update
    @user.update_attributes(params[:user])
    redirect_to :back
  end
  
  def show
    @show_user = User.find(params[:id])
  end
  
  def send_message
    data = {:title => params[:message][:title], :text => params[:message][:text]}
    @msg = Message.new_by_users(@user.id, params[:message][:reciever], data)
    if @msg && @msg.save
      respond_to do |format|
        format.html {redirect_to :back}
        format.js
      end
      #render :partial => 'message_view', :locals => {:user => @user, :m => @msg} 
    end
  end
  
 
  def show_dialog
    @messages = @user.dialog(params[:user_id])
    @msg = Message.new_by_users(@user.id, params[:user_id])
    #@msg.recievers.push(User.find(params[:user_id]))
  end
  

  def update_universities
    
  end
  
  def add_university
    @user.universities_relations.push(UsersUniversity.new_based_on(params))
    redirect_to :back
  end
end