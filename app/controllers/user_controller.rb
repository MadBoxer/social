class UserController < PublicController
  def show
      
  end
  
  def get_albums
    
  end
  
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
  
  def get_album
    
  end
end