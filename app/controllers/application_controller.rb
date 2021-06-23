class ApplicationController < ActionController::API


    # checking users token from the request
    #if token is valid use it to find a user from the database

    def authenticate
        @current_user = User.first
    end

end
