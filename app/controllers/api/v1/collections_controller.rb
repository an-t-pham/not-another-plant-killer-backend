class Api::V1::CollectionsController < ApplicationController
    before_action :set_user

    def index
        @collections = @user.collections
        render json: CollectionSerializer.new(@collections)
    end

    def plants
        @collection = Collection.find_by_id(params[:id])
        @plants = @collection.plants
        render json: CollectionSerializer.new(@plants)
    end

    def create
        @collection = @user.collections.build(collection_params)
        if @collection.save
            render json: CollectionSerializer.new(@collection), status: :accepted
        else 
            render json: {errors: CollectionSerializer.new(@collection).errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update
        @collection = Collection.find_by_id(params[:id])
        @collection.update(collection_params)
        render json: CollectionSerializer.new(@collection)
    end

    def show
        @collection = Collection.find_by_id(params[:id])
        render json: CollectionSerializer.new(@collection)
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
        @user = User.find_by_id(params[:user_id])
    end
end
