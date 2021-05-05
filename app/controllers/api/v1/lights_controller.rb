class Api::V1::LightsController < ApplicationController

    def index
        @lights = Light.all
        render json: LightSerializer.new(@lights)
    end



end