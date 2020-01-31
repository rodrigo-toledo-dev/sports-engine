require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user should be valid" do
    user = users(:rodrigo)
    user.password = 'newpassword'
    user.password_confirmation = 'newpassword'
    assert user.valid?
  end

  test "user should be invalid" do
    user = User.new
    assert user.invalid?
    assert_equal 2, user.errors.count
    user.password = 'newpassword'
    assert_equal 2, user.errors.count
  end
end
