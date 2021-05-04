class Api::V1::UsersController < ApplicationController

    

    private
    def user_params
        params.require(:user).permit(:name)
    end


end
