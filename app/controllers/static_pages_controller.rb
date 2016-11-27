class StaticPagesController < ApplicationController
    def splash
        redirect_to home_path if logged_in?
    end

    def home
    end

    def help
    end

    def about
    end
end
