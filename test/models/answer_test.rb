require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
    def setup
        @answer1 = answers(:kim_answer1)
        @other_user = users(:john)
        @word2 = words(:february_word)
    end

    test "should be valid" do
        assert @answer1.valid?
    end

    test "user should be present" do
        @answer1.user_id = "     "
        assert_not @answer1.valid?
    end

    test "word should be present" do
        @answer1.word_id = "     "
        assert_not @answer1.valid?
    end

    test "should not insert same answer with same user and word" do
        duplicate_answer = @answer1.dup
        @answer1.save
        assert_not duplicate_answer.valid?
    end

    test "should insert answer with same word but different user" do
        other_user_answer = Answer.new(
            user: @other_user,
            word: @word2
            )
        other_user_answer.save
        assert other_user_answer.valid?
    end
end
