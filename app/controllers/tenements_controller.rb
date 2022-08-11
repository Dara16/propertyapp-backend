class TenementsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
   def index
        tenements = Tenement.all
        render json: tenements
   end

   def show
        tenement = Tenement.find(params[:id])
        render json: tenement
   end

   def create
        tenement = Tenement.create(tenement_params)
        render json: tenement
   end

   def update
        tenement = Tenement.find(params[:id])
        tenement.update(tenement_params)
        render json: tenement
   end

   def destroy
        tenement = Tenement.find(params[:id])
        tenement.destroy
        render json: tenement
   end

   private

   def tenement_params
        params.require(:tenement).permit(:name)
   end

   def render_not_found_response
        render json: { errors: 'Building Not Found' }, 
        status: :not_found
   end
end