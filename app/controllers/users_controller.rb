class UsersController < ApplicationController

    before_action :authenticate, only: [:myself, :update]

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

    def signup
        # get user info from form
        # create a user database (user.create)
        # render json

        @user_params = params.permit(:email, :name, :profile_image, :password)

        # @current_user.create(name: params[:name], email: params[:email], profile_image: params[:profile_image])
        @user = User.create(@user_params)

        # @user.erros.full_messages

        if @user.valid?

        render json: @user, status: :created

        else 

        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity

        end
    end

    # GET / myself
    #authenticate 

    def myself 
        render json: @current_user
    end


    #authenticate
    def update 
        # byebug
        @current_user.update(name: params[:name], email: params[:email], profile_image: params[:profile_image])

        render json: @current_user

    end

    #authenticate
    #photo >- user

    # def create
    #     @user = User.first
    #     @user.create( name: params[:name], email: params [:email], profile_image: params[:profile_image])
    #     render json: @user
    # end


end
