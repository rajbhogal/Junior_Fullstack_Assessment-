# frozen_string_literal: true

module Api
  module V1
    class PetsController < ApplicationController

      def index
        pets = params[:species].present? ? Pet.where(species: params[:species]) : Pet # filter based on the species
        pets = pets.order(:featured, :name) # orderd by featured and then name
        render json: pets, status: :ok
      end

    end
  end
end
