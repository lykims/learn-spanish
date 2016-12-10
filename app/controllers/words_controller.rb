class WordsController < ApplicationController
    def index
        @first_letters = Word.joins(:category).where(categories: {name: 'Vocabulary'}).order(:english).collect{|word| word.english[0,1].upcase}.uniq.sort
        if params[:letter] && @first_letters.any? && @first_letters.include?(params[:letter])
            letter = params[:letter] + '%'
            @words = Word.joins(:category).where.has {(category.name == 'Vocabulary') & (english =~ letter)}
        else
            redirect_to dictionary_words_url
        end
    end

    def show
        @first_letters = Word.joins(:category).where(categories: {name: 'Vocabulary'}).order(:english).collect{|word| word.english[0,1].upcase}.uniq.sort
        if @first_letters.any?
            redirect_to vocabulary_words_url(@first_letters.first)
        else
            flash[:danger] = "No words in the dictionary :("
            redirect_to home_url
        end
    end

    def greetings
        @words = Word.joins(:category).where(categories: {name: 'Greetings'} )
    end

    def calendar
        @month_words = Word.joins(:category).where(categories: {name: 'Calendar'}, tag: 'month')
        @day_words = Word.joins(:category).where(categories: {name: 'Calendar'}, tag: 'day')
        @period_words = Word.joins(:category).where(categories: {name: 'Calendar'}, tag: 'period' )
    end

    def numbers
        @words = Word.joins(:category).where(categories: {name: 'Numbers'} )
    end
end
