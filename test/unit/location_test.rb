require 'test_helper'

class LocationTest < ActiveSupport::TestCase

	test "location is properly created" do
		location = Location.create(:city => "NY", :country => "USA")
		assert location.valid?
	end

  test "location has many users associated with it" do
    location = Location.create(:city => "NY", :country => "USA")
    location.users.create(:name => "Edmund")
    assert_equal 1, location.users.count
  end
end
