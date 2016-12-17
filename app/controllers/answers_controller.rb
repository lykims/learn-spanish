require "i18n"

class AnswersController < ApplicationController
    before_action :logged_in_user

    def test
        @word_answer = Answer.new
        @categories = Category.all.collect{|category| category.name}
        if params[:category] && @categories.any? && @categories.include?(params[:category])
            @category = params[:category]
            @progress_percentage = user_answers_percentage_by_type(current_user, @category)
            word = nil
            if @progress_percentage == 100
                word = Word.joins(:category).where(categories: {name: @category}).order("RANDOM()").first
            else
                word = Word.joins(:category).where(categories: {name: @category}).where.not(id: Answer.where(user_id: current_user.id).select(:word_id)).order("RANDOM()").first
            end
            if word.nil?
                flash[:danger] = "No word found :("
                redirect_to home_url
            else
                @word_answer.word_id = word.id
                @word_answer.english = (word.english_prefix ? word.english_prefix + ' ' : '') + word.english
            end
        else
            flash[:danger] = "No word found :("
            redirect_to home_url
        end
    end

    def submitword
        @word_answer = Answer.new(answer_params)
        puts @word_answer
        @dictionary_word = Word.find_by_id(@word_answer.word_id)
        if @dictionary_word && @word_answer && defined?(@word_answer.spanish) && I18n.transliterate(@word_answer.spanish.downcase) == I18n.transliterate(@dictionary_word.spanish.downcase)
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
            params.require(:answer).permit(:word_id, :english, :spanish)
        end
end
