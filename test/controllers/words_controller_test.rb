require 'test_helper'

class WordsControllerTest < ActionDispatch::IntegrationTest
    test "should get index" do
        get vocabulary_words_url("F")
        assert_response :success
    end

    test "should get show" do
        get dictionary_words_url
        assert_redirected_to vocabulary_words_url("F")
    end

    test "should get greetings" do
        get greetings_words_url
        assert_response :success
    end

    test "should get questions" do
        get questions_words_url
        assert_response :success
    end

    test "should get calendar" do
        get calendar_words_url
        assert_response :success
    end

    test "should get numbers" do
        get numbers_words_url
        assert_response :success
    end

end
