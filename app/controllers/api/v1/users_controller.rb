class Api::V1::UsersController < ApplicationController
    
    def create
        @user = User.find_or_initialize_by(user_params)
        if @user.save
            render json: UserSerializer.new(@user), status: :accepted
        else 
            render json: {errors: UserSerializer.new(@user).errors.full_messages}, status: :unprocessible_entity
        end
    end
    
    def index
        @users = User.all
        render json: UserSerializer.new(@users)
    end

    def plants
        @user = User.find_by_id(params[:user_id])
        if params[:user_id]
           @plants = @user.plants
           render json: UserSerializer.new(@plants)
        else 
            render json: {error: 'You are not logged in'}
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email)
    end


end
