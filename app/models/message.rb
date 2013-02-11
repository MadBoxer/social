class Message < ActiveRecord::Base
  attr_accessible :messenger, :text, :title, :reciever_attributes, :reciever
  
  #has_many :users_messages
  belongs_to :reciever, :class_name => 'User'#, :through => :users_messages, :foreign_key => :user_id
  #accepts_nested_attributes_for :reciever, :allow_destroy => true 
  
  
  belongs_to :sender, :class_name => 'User', :foreign_key => :messenger
  
  def self.new_by_users(from, to, data = nil)
    msg = self.new
    sender = User.active.find(from)
    if sender
      msg.sender = sender
    else
      return nil
    end

    reciever = User.active.find(to)
    if reciever
      msg.reciever = reciever
    else
      return nil
    end

    
    if data && data.keys.length > 0
      if data[:title] && !data[:title].empty?
        msg.title = data[:title]
      end
      if data[:text] && !data[:text].empty?
        msg.text = data[:text]
      else
        return nil
      end
    end
    return msg
  end
  
end