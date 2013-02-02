class UserAlbum < Album
  belongs_to :user
  
  def self.new_based_on(args)
    album = self.new
    album.name = args[:name]
    album.alias = Russian::translit(album.name) 
    if args[:announce]
      album.announce = args[:announce]
    end
    if args[:description]
      album.description = args[:description]
    end
    album
  end
end
