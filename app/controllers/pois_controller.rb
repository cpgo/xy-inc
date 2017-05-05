class PoisController < ApplicationController
  def index
    pois = Poi.all
    render json: pois
  end

  def create 
    poi = Poi.new(poi_params)
    if poi.save()
      return render json: poi      
    end
    return render json: poi.errors
  end

  def poi_params
    params.require(:poi).permit(:name, :x, :y)
  end
end
