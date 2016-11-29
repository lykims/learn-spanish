require 'test_helper'

class WordTest < ActiveSupport::TestCase
    def setup
        @word1 = words(:january_word)
    end

    test "should be valid" do
        assert @word1.valid?
    end

    test "english should be present" do
        @word1.english = "     "
        assert_not @word1.valid?
    end

    test "spanish should be present" do
        @word1.spanish = "     "
        assert_not @word1.valid?
    end

    test "category should be present" do
        @word1.category_id = "     "
        assert_not @word1.valid?
    end

    test "should not insert same English word" do
        duplicate_word = @word1.dup
        @word1.save
        assert_not duplicate_word.valid?
    end

    test "should not insert same English word not case-sensitive" do
        duplicate_word = @word1.dup
        @word1.english = "jANUarY"
        @word1.save
        assert_not duplicate_word.valid?
    end
end
