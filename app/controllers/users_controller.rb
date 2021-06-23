class UsersController < ApplicationController
    def index
        @users = User.all

        render json: @users
    end



    def show 
        @user = User.find(params[:id])

        render json: @user
    end

    def login
        # check the username and password
        # if they are who they say they are 
        # give them a tokin(wristband) send the user and their token as the response 
        # otherwise send back an error message 

        # fake auth(stub)
        @user = User.first
        render json: @user
    end

    # GET / myself
    #authenticate 

    def myself 
        #check users token from the request
        # if token is valid use it to find user from the database
        # otherwise send an error message

        @user = User.first
        render json: @user
    end


    #authenticate
    def update 
        @user = User.first

        @user.update(name: params[:name], email: params[:email])

        render json: @user
    end

    #authenticate
    #photo >- user

    def create
        @user = User.first
        @user.create( name: params[:name], email: params [:email], profile_image: params[:profile_image])
        render json: @user
    end


end
