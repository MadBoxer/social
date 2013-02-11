class UsersMessage < ActiveRecord::Base
  belongs_to :reciever, :class_name => 'User'
  belongs_to :message 
end