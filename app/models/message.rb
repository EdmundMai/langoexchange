class Message < ActiveRecord::Base
  attr_accessible :content, :read, :receiver_id, :sender_id

  belongs_to :receiver, :class_name => "User", :foreign_key => "receiver_id"
  belongs_to :sender, :class_name => "User", :foreign_key => "sender_id"

end
