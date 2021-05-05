class Api::V1::PlantsController < ApplicationController

    def index
        @plants = Plant.all
        render json: PlantSerializer.new(@plants)
    end

    def user_plants
        @user = User.find_by_id(params[:user_id])
        if params[:user_id]
           @plants = @user.plants
           render json: PlantSerializer.new(@plants)
        else 
            render json: {error: 'You are not logged in'}
        end
    end

    
    def create
        binding.pry
        @plant = Plant.new(plant_params)
       
        if @plant.save
            render json: PlantSerializer.new(@plant), status: :accepted
        else 
            render json: {errors: PlantSerializer.new(@plant).errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        @plant = Plant.find_by_id(params[:id])
        render json: PlantSerializer.new(@plant)
    end

    def update
        @plant = Plant.find_by_id(params[:id])
        @plant.update(plant_params)
        render json: PlantSerializer.new(@plant)
    end
    
    def destroy
        plant = Plant.find_by_id(params[:id])
        plant.destroy
    end

    private
    def plant_params
        params.require(:plant).permit(:name, :aka, :description, :size_pot, :pet_friendly)
    end


end
