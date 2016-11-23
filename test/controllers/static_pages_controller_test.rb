require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Learning Language - Spanish"
  end

  test "should get home" do
    get '/'
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get '/help'
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get '/about'
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

end
