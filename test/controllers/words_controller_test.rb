require 'test_helper'

class WordsControllerTest < ActionDispatch::IntegrationTest
    def setup
        @user = users(:kim)
    end

    test "should get index" do
        log_in_as(@user)
        get vocabulary_words_url("F")
        assert_response :success
    end

    test "should get show" do
        log_in_as(@user)
        get dictionary_words_url
        assert_redirected_to vocabulary_words_url("F")
    end

    test "should get greetings" do
        log_in_as(@user)
        get greetings_words_url
        assert_response :success
    end

    test "should get calendar" do
        log_in_as(@user)
        get calendar_words_url
        assert_response :success
    end

    test "should get numbers" do
        log_in_as(@user)
        get numbers_words_url
        assert_response :success
    end

end
