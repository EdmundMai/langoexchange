class Message < ActiveRecord::Base
  attr_accessible :content, :read, :receiver_id, :sender_id

end
