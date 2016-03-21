class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end

  def new
    @neighborhood = Neighborhood.new
  end

  def create
    @neighborhood = Neighborhood.create!(neighborhood_params)

    redirect_to neighborhood_url(@neighborhood)
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
    @bars = @neighborhood.bars
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def neighborhood_params
    params.require(:neighborhood).permit(:name, :metro_stop, :image_url)
  end
end
