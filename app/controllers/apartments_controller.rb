class ApartmentsController < ApplicationController
     rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

     def index
         apartments = Apartment.all
         render json: apartments
     end

     def show
          id = params[:id]
          course = Apartment.find(id)
          render json: course, except: [:created_at, :updated_at]
     end

     private

     def render_not_found_response
          render json: {error: "Apartment not found "},
          status: :not_found
     end
    
 end