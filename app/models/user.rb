class User < ActiveRecord::Base
  attr_accessible :age, :gender, :name

  has_many :sent_messages, :class_name => "Message", :foreign_key => "sender_id"
  has_many :received_messages, :class_name => "Message", :foreign_key => "receiver_id"





end


	