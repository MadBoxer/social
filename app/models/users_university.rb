class UsersUniversity < ActiveRecord::Base
  attr_accessible :faculty_id, :studentstatus_id, :university_id, :user_id
  
  validates :university_id, :presence => true
  belongs_to :user
  belongs_to :university
  
  def self.new_based_on(params)
    if params[:university_id]
      item = self.new
      item.university_id = params[:university_id]
      if params[:faculty_id]
        item.faculty_id = params[:faculty_id]
      end
      if params[:studentstatus_id]
        item.studentstatus_id = params[:studentstatus_id]
      end
      item
    else
      nil
    end
  end
end