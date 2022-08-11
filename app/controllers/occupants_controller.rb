class OccupantController < ApplicationController
    def index
        occupants = Occupant.all
        render json: occupants
   end
end