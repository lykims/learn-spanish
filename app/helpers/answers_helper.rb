module AnswersHelper
    def user_answers_percentage(user)
        total = Word.count
        if total == 0
            total = 1
        end
        @user_answers_percentage = (Answer.where(user_id: user.id).count.to_f / total * 100).to_i
    end

    def user_answers_percentage_by_type(user, type)
        total = Word.joins(:category).where(categories: {name: type} ).count
        if total == 0
            total = 1
        end
        @user_answers_percentage_by_type = (
            Answer.joins(:word => :category).where(:user_id => user.id, :categories => {:name => type}).count.to_f / total * 100
        ).to_i
    end
end
