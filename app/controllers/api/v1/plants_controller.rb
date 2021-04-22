class Api::V1::PlantsController < ApplicationController

    def index
        @plants = Plant.all
        render json: @plants
    end
    
    def create
        @plant = Plant.new(plant_params)
        if @plant.save
            render json: @plant, status: :accepted
        else 
            render json: {errors: @plant.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        @plant = Plant.find(params[:id])
        render json: @plant
    end


    private
    def plant_params
        params.require(:plant).permit(:name, :aka, :description, :size_pot, :pet_friendly)
    end


end
