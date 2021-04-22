class Api::V1::CollectionsController < ApplicationController

    def create
        @collection = Collection.new(collection_params)
        if @collection.save
            render json: @plant, status: :accepted
        else 
            render json: {errors: @plant.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        @collection = Collection.find(params[:id])
        render json: @collection
    end

    def destroy
        @collection = Collection.find(params[:id])
        @collection.destroy
    end


    private
    def collection_params
        params.require(:collection).permit(:name)
    end
end
