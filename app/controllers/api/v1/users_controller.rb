class Api::V1::UsersController < ApplicationController
    
    def create
        @user = User.new(user_params)
        if user.save
            render json: UserSerializer.new(@user), status: :accepted
        else 
            render json: {errors: UserSerializer.new(@user).errors.full_messages}, status: :unprocessible_entity
        end
    end


    def update
        @user = User.find_by_id(params[:id])
        @user.update(user_params)
        render json: PlantSerializer.new(@user)
    end

   
    def show
        @user = User.find_by_id(params[:id])
        render json: UserSerializer.new(@user)
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
