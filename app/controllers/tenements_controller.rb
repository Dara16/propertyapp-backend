class TenementsController < ApplicationController
   def index
        tenements = Tenement.all
        render json: tenements
   end
end