require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "message is properly created" do
    message = Message.create(:content => "gibberish", :read => 0)
    assert message.valid?
  end
end
