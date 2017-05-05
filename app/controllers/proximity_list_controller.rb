class ProximityListController < ApplicationController
  def index
    pois = Poi.all
    max = (poi_params[:max] || 10).to_i
    near_pois = Calculator.by_proximity(
      x: poi_params[:x], 
      y: poi_params[:y], 
      list: pois,
      max: max
      )
    return render json: near_pois
  end
  
  def poi_params
      params.require(:coords).permit(:x, :y, :max)
  end

end
