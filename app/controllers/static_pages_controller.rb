class StaticPagesController < ApplicationController
    before_action :logged_in_user, only: [:home, :help]
    before_action :logged_out_user, only: [:splash]

    def splash
    end

    def home
        @users_count = User.count
        @words_count = Word.count
        @greetings_words_count = Word.joins(:category).where(categories: {name: 'Greetings'}).count
        @calendar_words_count = Word.joins(:category).where(categories: {name: 'Calendar'}).count
        @numbers_words_count = Word.joins(:category).where(categories: {name: 'Numbers'}).count
        @other_voc_words_count = Word.joins(:category).where(categories: {name: 'Vocabulary'}).count
    end

    def help
    end

    def about
    end
end
