class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def new
        redirect_to home_path if logged_in?
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            log_in @user
            flash[:success] = "Welcome Learning Language!"
            redirect_to user_url(@user)
        else
            render 'new'
        end
    end

    private

        def user_params
          params.require(:user).permit(:name, :username, :password,
                                       :password_confirmation)
        end
end
