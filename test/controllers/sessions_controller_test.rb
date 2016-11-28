require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
    def setup
        @user = users(:kim)
    end

    test "should get new" do
        get login_path
        assert_response :success
    end

    test "should redirect to home when logged-in user tries to go to login page" do
        log_in_as(@user)
        get login_url
        assert_redirected_to home_url
    end

end
