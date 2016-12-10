require 'test_helper'

class AnswersControllerTest < ActionDispatch::IntegrationTest
    def setup
        @user = users(:kim)
        @calendar_category = categories(:calendar_category)
        @greetings_category = categories(:greetings_category)
        @vocabulary_category = categories(:vocabulary_category)
        @comida_word = words(:comida_word)
    end

    test "should redirect if not logged in" do
        get test_url(@calendar_category.name)
        assert_redirected_to login_url
    end

    test "should get test page" do
        log_in_as(@user)
        get test_url(@calendar_category.name)
        assert_response :success
    end

    test "should get home with category without words" do
        log_in_as(@user)
        get test_url(@greetings_category.name)
        assert_not flash.empty?
        assert_redirected_to home_url
    end

    test "should get home with invalid category" do
        log_in_as(@user)
        @greetings_category.name = "hello"
        get test_url(@greetings_category.name)
        assert_not flash.empty?
        assert_redirected_to home_url
    end

    test "should get correct answer" do
        log_in_as(@user)
        get test_url(@vocabulary_category.name)
        assert_response :success
        post test_url, params: { answer: { english: @comida_word.english, spanish: @comida_word.spanish } }
    end

    test "should redirect to test when incorrect answer" do
        log_in_as(@user)
        get test_url(@vocabulary_category.name)
        assert_response :success
        post test_url, params: { answer: { english: @comida_word.english, spanish: "" } }
        assert_not flash.empty?
        assert_redirected_to test_url(@vocabulary_category.name)
    end
end
