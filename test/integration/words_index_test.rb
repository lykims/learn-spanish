require 'test_helper'

class WordsIndexTest < ActionDispatch::IntegrationTest
    def setup
        @user = users(:kim)
        @admin = users(:kim)
        @non_admin = users(:bob)
    end

    test "index as admin including edit links" do
        log_in_as(@admin)
        get greetings_words_path
        words = Word.joins(:category).where(categories: {name: 'Greetings'} )
        words.each do |word|
            assert_select 'a', 'words/edit/'+word.id
        end
    end

    test "index as non-admin" do
        log_in_as(@non_admin)
        get greetings_words_path
        words = Word.joins(:category).where(categories: {name: 'Greetings'} )
        words.each do |word|
            assert_select 'a', 'words/edit/'+word.id, count:0
        end
    end
end
