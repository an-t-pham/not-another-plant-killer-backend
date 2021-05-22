class Api::V1::CollectionsController < ApplicationController
    def index
        @user = User.find_by_id(params[:user_id])
        @collections = @user.collections
        render json: CollectionSerializer.new(@collections)
    end

    def collection_plants
        @collection = Collection.find_by_id(params[:collection_id])
        @plant = Plant.find_by_id(params[:id])
        @plants = @collection.plants.push(@plant)
        @collection.save if @plant
        render json: CollectionSerializer.new(@collection)
    end

    def create
        @user = User.find_by_id(params[:user_id])
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

    def remove_plant 
        @plant = Plant.find_by_id(params[:id])
        @collection = Collection.find_by_id(params[:collection_id])
        plants = @collection.plants.filter{|p| p != @plant}
        @collection.plants = plants
        render json: CollectionSerializer.new(@collection)
    end


    private
    def collection_params
        params.require(:collection).permit(:name)
    end

end
