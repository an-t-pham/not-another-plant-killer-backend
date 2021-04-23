class Api::V1::CollectionsController < ApplicationController
    before_action :set_user

    def index
        @collections = @user.collections
        render json: @collections
    end

    def index_plant
        @collection = Collection.find_by_id(params[:id])
        @plants = @collection.plants
        render json: @plants
    end

    def create
        @collection = @user.collections.build(collection_params)
        if @collection.save
            render json: @collection, status: :accepted
        else 
            render json: {errors: @collection.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        @collection = Collection.find_by_id(params[:id])
        render json: @collection
    end

    def destroy
        @collection = Collection.find_by_id(params[:id])
        @collection.destroy
    end


    private
    def collection_params
        params.require(:collection).permit(:name)
    end

    def set_user
        @user = User.find_by_id(:user_id)
    end
end
