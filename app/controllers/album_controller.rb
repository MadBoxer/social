class AlbumController < PublicController
  def show
    @album = @user.albums.where(:alias => params[:alias]).first
    #1.times{ @album.photos.build }
  end
  
  def add_photos
        #@uploads = Upload.all

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @uploads.map{|upload| upload.to_jq_upload } }
    #end
    @album = @user.albums.find(3)
    @p = Photo.new
    @p.path = params["'my-pic'"]
    #@album.photos.push(@p)
    
    #@album.update_attributes(params[:album])
=begin
    @album = @user.albums.find(params[:album][:id])
    params[:album][:photos].each do |p|
      @album.photos.push(p)
    end
    #@album.update_attributes(params[:album])
=end
  end
  
end