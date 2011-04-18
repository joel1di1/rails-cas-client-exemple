require 'test_helper'

class OolUserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "Should able to access ooluser" do
    ool_user = OolUser.find("dXNlckB0ZXN0LmNvbQ==")
    assert_equal "user@test.com", ool_user.email
  end
end
