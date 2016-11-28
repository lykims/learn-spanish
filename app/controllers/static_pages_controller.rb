class StaticPagesController < ApplicationController
    before_action :logged_in_user, only: [:home, :help]
    before_action :logged_out_user, only: [:splash]

    def splash
    end

    def home
    end

    def help
    end

    def about
    end
end
