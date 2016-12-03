class WordsController < ApplicationController
    def index
        @vocabulary_category = Category.where(Name: 'Vocabulary')
        @first_letters = Word.where(category: @vocabulary_category).order(:english).collect{|word| word.english[0,1].upcase}.uniq.sort
        if params[:letter] && @first_letters.any? && @first_letters.include?(params[:letter])
            @words = Word.where("english LIKE ? AND category_id = ?", params[:letter]+"%", @vocabulary_category.ids)
        else
            redirect_to dictionary_words_path
        end
    end

    def show
        @vocabulary_category = Category.where(Name: 'Vocabulary')
        @first_letters = Word.where(category: @vocabulary_category).order(:english).collect{|word| word.english[0,1].upcase}.uniq.sort
        redirect_to vocabulary_words_url(@first_letters.first)
    end

    def greetings
        @greetings_category = Category.where(Name: 'Greetings')
        @words = Word.where(:category => @greetings_category)
    end

    def calendar
        @calendar_category = Category.where(Name: 'Calendar')
        @month_words = Word.where(:category => @calendar_category, :tag => 'month')
        @day_words = Word.where(:category => @calendar_category, :tag => 'day')
        @period_words = Word.where(:category => @calendar_category, :tag => 'period')
    end

    def numbers
        @numbers_category = Category.where(Name: 'Numbers')
        @words = Word.where(:category => @numbers_category)
    end
end
