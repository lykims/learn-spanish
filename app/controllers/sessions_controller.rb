class SessionsController < ApplicationController
    before_action :logged_out_user, only: [:new]

    def new
    end

    def create
        user = User.find_by(username: params[:session][:username].downcase)
        if user && user.authenticate(params[:session][:password])
            log_in user
            params[:session][:remember_me] == '1' ? remember(user) : forget(user)
            redirect_back_or home_url
        else
          flash.now[:danger] = 'Invalid username or password'
          render 'new'
        end
    end

    def destroy
        log_out if logged_in?
        redirect_to root_url
    end
end
