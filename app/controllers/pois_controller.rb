class PoisController < ApplicationController
  def index
    pois = Poi.all
    render json: pois
  end

  def create 
    poi = Poi.new(@params)
    puts @params
    if poi.save()
      render json: poi      
    end
    render json: poi.errors
  end

  def poi_params
      params.require(:poi).permit(:name, :x, :y)
  end
end
