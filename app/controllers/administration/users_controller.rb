require 'digest/md5'
class Administration::UsersController < Administration::ScaffoldController
  before_filter :gen_hash, :only => [:create]
  private#-------------------------
  
  def get_object
    @object = @model.new(params[:user])
  end
  
  def gen_hash
    params[:user][:user_hash] = Digest::MD5.hexdigest(rand(100000000).to_s)
  end
end