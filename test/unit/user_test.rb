require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user is created" do
  	user = User.create(:name => "Edmund", :age => 3, :gender => "m")
  	assert_instance_of User, user
    assert user.valid?
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

  test "on user creation, a remember token is created" do
  	user = User.create(:name => "Edmund", :age => 3, :gender => "m")
  	assert_not_nil user.remember_token
  end

  test "user has spoken language" do
  	user = User.create(:name => "Edmund", :age => 3, :gender => "m")
  end

  # test "user belongs to a location" do
  # 	user = User.create(:name => "Edmund", :age => 3, :gender => "m")
  # 	user.location.create(:city => "NY", :country => "United States of America")
  # end


end
