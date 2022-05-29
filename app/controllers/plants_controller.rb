class PlantsController < ApplicationController

    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plants = Plant.find_by(id: params[:id])
        render json: plants
    end

    def create
        plants = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plants, status: :created
    end

end
