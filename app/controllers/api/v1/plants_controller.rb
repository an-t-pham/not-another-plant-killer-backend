class Api::V1::PlantsController < ApplicationController

    def index
        @plants = Plant.all
        render json: PlantSerializer.new(@plants)
    end

    def create
        @plant = Plant.new(plant_params)
        @plant.water = Water.find_by(level: params[:water])
        @plant.light = Light.find_by(level: params[:light])
        @plant.name = @plant.name.downcase
        
        if @plant.save
            render json: PlantSerializer.new(@plant), status: :accepted
        else 
            render json: {errors: @plant.errors.full_messages}, status: :internal_server_error
        end
    end

    def show
        @plant = Plant.find_by_id(params[:id])
        render json: PlantSerializer.new(@plant)
    end

    def update
        @plant = Plant.find_by_id(params[:id])
        @plant.update(plant_params)
        @plant.water = Water.find_by(level: params[:water])
        @plant.light = Light.find_by(level: params[:light])
        if @plant.save
            render json: PlantSerializer.new(@plant), status: :accepted
        else 
            render json: {errors: @plant.errors.full_messages}, status: :internal_server_error
        end
    end
    
    def destroy
        plant = Plant.find_by_id(params[:id])
        plant.destroy
    end

    private
    def plant_params
        params.require(:plant).permit(:name, :aka, :description, :size_pot, :pet_friendly, :image_url)
    end


end
