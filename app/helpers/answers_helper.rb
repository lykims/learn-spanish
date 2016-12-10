module AnswersHelper
    def user_answers_percentage(user)
        @user_answers_percentage = (Answer.where(user_id: user.id).count.to_f / Word.count * 100).to_i
    end

    def user_answers_percentage_by_type(user, type)
        @user_answers_percentage_by_type = (
            Answer.joins(:word => :category).where(:user_id => user.id, :categories => {:name => type}).count.to_f / Word.joins(:category).where(categories: {name: type} ).count * 100
        ).to_i
    end
end
