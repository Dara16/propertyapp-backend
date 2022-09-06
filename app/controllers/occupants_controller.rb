class OccupantsController < ApplicationController
    def index
        occupants = Occupant.all
        render json: occupants
   end

   def show
    occupant = Occupant.find(params[:id])
    render json: occupant
    end

    def create
        occupant = Occupant.create(tenement_params)
        render json: occupant
    end

    def update
        occupant = Occupant.find(params[:id])
        occupant.update(tenement_params)
        render json: occupant
    end

    def destroy
        occupant = Occupant.find(params[:id])
        occupant.destroy
        render json: occupant
    end

    private

    def tenement_params
        params.require(:occupant).permit(:name)
    end

    def render_not_found_response
        render json: { errors: 'Building Not Found' }, 
        status: :not_found
    end
end