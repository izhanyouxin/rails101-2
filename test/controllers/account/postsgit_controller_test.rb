require 'test_helper'

class Account::PostsgitControllerTest < ActionDispatch::IntegrationTest
  test "should get commit" do
    get account_postsgit_commit_url
    assert_response :success
  end

end
