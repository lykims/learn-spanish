require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
    def setup
        @base_title = "Learning Language - Spanish"
        @user = users(:kim)
    end

    test "should get splash" do
        get '/'
        assert_response :success
        assert_select "title", "#{@base_title}"
    end

    test "should get home" do
        log_in_as(@user)
        get '/home'
        assert_response :success
        assert_select "title", "Home | #{@base_title}"
    end

    test "should redirect to login when logged-out user tries to go to Home" do
        get '/home'
        assert_not flash.empty?
        assert_redirected_to login_url
    end

    test "should get help" do
        log_in_as(@user)
        get '/help'
        assert_response :success
        assert_select "title", "Help | #{@base_title}"
    end

    test "should redirect to login when logged-out user tries to go to Help" do
        get '/help'
        assert_not flash.empty?
        assert_redirected_to login_url
    end

    test "should get about" do
        get '/about'
        assert_response :success
        assert_select "title", "About | #{@base_title}"
    end

    test "should redirect to home when logged-in user tries to go to splash page" do
        log_in_as(@user)
        get root_url
        assert_redirected_to home_url
    end

end
