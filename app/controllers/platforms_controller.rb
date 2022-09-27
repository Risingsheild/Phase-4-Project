class PlatformsController < ApplicationController
    def index 
        render json: Platform.all
    end
end
