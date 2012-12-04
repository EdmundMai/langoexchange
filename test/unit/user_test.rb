require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user is created" do
  	user = User.create(:name => "Edmund", :age => 3, :gender => "m")
    assert_equal user, User.find_by_name("Edmund")
    assert_equal 3, User.count
  end

  test "user has sent messages" do
  	user = User.create(:name => "Edmund", :age => 3, :gender => "m")
  	2.times do 
  	  user.sent_messages.create(:sender_id => user.id)
  	end
  	assert_equal 2, user.sent_messages.count
  end

  test "user has received messages" do
  	user = User.create(:name => "Edmund", :age => 3, :gender => "m")
  	2.times do
  	  user.received_messages.create(:receiver_id => user.id)
  	end
  	assert_equal 2, user.received_messages.count
  end


end
