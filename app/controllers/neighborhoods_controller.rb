class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood = Neighborhood.create!(neighborhood_params)
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
    @bars = @neighborhood.bars.all
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def neighborhood_params
    params.require(:neighborhood).permit(:name, :metro_stop)
  end
end
