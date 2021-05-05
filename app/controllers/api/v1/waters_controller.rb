class Api::V1::WatersController < ApplicationController

    def index
        @waters = Water.all
        render json: WaterSerializer.new(@waters)
    end



end