class AnswersController < ApplicationController
    before_action :logged_in_user
    
    def test
        @word_answer = Answer.new
        @categories = Category.all.collect{|category| category.name}
        if params[:category] && @categories.any? && @categories.include?(params[:category])
            @category = params[:category]
            @word = Word.joins(:category).where(categories: {name: @category}).sample
            if @word.nil?
                flash[:danger] = "No words in the dictionary :("
                redirect_to home_url
            else
                @word_answer.word = @word
                @word_answer.english = @word.english
            end
        else
            flash[:danger] = "No words in the dictionary :("
            redirect_to home_url
        end
    end

    def submitword
        @word_answer = Answer.new(answer_params)
        @dictionary_word = Word.find_by_english(@word_answer.english)
        if @dictionary_word && @word_answer && defined?(@word_answer.spanish) && @word_answer.spanish.downcase == @dictionary_word.spanish.downcase
            @word_answer.word_id = @dictionary_word.id
            @word_answer.user_id = current_user.id
            @word_answer.save
            redirect_to test_path(params[:category])
        else
            flash[:danger] = "Incorrect answer. Try this word:"
            redirect_to test_path(params[:category])
        end
    end

    private
        def answer_params
            params.require(:answer).permit(:english, :spanish)
        end
end
