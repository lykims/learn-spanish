class WordsController < ApplicationController
    before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]
    before_action :admin_user,     only: [:new, :create, :edit, :update, :destroy]

    def index
        @first_letters = Word.joins(:category).where(categories: {name: 'Vocabulary'}).order(:english).collect{|word| word.english[0,1].upcase}.uniq.sort
        if params[:letter] && @first_letters.any? && @first_letters.include?(params[:letter])
            letter = params[:letter] + '%'
            @words = Word.joins(:category).where.has {(category.name == 'Vocabulary') & (english =~ letter)}.ordering { [english.asc] }
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

    def questions
        @words = Word.joins(:category).where(categories: {name: 'Questions'} )
    end

    def calendar
        @month_words = Word.joins(:category).where(categories: {name: 'Calendar'}, tag: 'month')
        @day_words = Word.joins(:category).where(categories: {name: 'Calendar'}, tag: 'day')
        @period_words = Word.joins(:category).where(categories: {name: 'Calendar'}, tag: 'period' )
    end

    def numbers
        @words1 = Word.joins(:category).where(categories: {name: 'Numbers'}, tag: '1')
        @words2 = Word.joins(:category).where(categories: {name: 'Numbers'}, tag: '2')
        @words3 = Word.joins(:category).where(categories: {name: 'Numbers'}, tag: '3')
        @words4 = Word.joins(:category).where(categories: {name: 'Numbers'}, tag: '4')
        @words5 = Word.joins(:category).where(categories: {name: 'Numbers'}, tag: '5')
        @words6 = Word.joins(:category).where(categories: {name: 'Numbers'}, tag: '6')
    end

    def new
        @word = Word.new
    end

    def create
        @word = Word.new(word_params)
        puts @word
        if @word.save
            flash[:success] = "New word succesfully added!"
            redirect_to home_url
        else
            render 'new'
        end
    end

    def edit
        @word = Word.find(params[:id])
    end

    def update
        @word = Word.find(params[:id])
        if @word.update_attributes(word_params)
            flash[:success] = "Word updated!"
            redirect_to @word
        else
            render 'edit'
        end
    end

    def destroy
        Word.find(params[:id]).destroy
        flash[:success] = "Word deleted"
        redirect_to dictionary_words_url
    end

    private

        def word_params
          params.require(:word).permit(:english, :spanish, :category_id, :tag)
        end
end
