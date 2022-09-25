class CampsitesController < ApplicationController
    def index 
        render json: Campsite.all
    end
    
end
