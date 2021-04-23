class Api::V1::UsersController < ApplicationController
    
    def create
        @user = User.new(user_params)
        if user.save
            render json: @user, status: :accepted
        else 
            render json: {errors: @user.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def index_plant
        @user = User.find_by_id(params[:id])
        @plants = @user.plants
        render json: @plants
    end

    def show
        @user = User.find_by_id(params[:id])
        render json: @user
    end

    def destroy
        user = User.find_by_id(params[:id])
        user.destroy
    end

    private
    def user_params
        params.require(:user).permit(:name)
    end


end
