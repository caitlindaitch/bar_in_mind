class BarsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end

  def new
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @bar = @neighborhood.bars.new
  end

  def create
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @bar = @neighborhood.bars.create(bar_params.merge(user: current_user))

    redirect_to neighborhood_bar_url(@neighborhood, @bar)
  end

  def show
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @bar = @neighborhood.bars.find(params[:id])
  end

  def edit
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @bar = @neighborhood.bars.find(params[:id])
  end

  def update
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @bar = @neighborhood.bars.find(params[:id])
    @bar.update(bar_params)

    redirect_to neighborhood_bar_url(@neighborhood, @bar)
  end

  def destroy
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @bar = @neighborhood.bars.find(params[:id])
    @bar.destroy

    redirect_to @neighborhood
  end

  def add_favorite
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @bar = @neighborhood.bars.find(params[:id])
    @bar.favorites.create(user: current_user)

    redirect_to neighborhood_bar_url(@neighborhood, @bar)
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :category, :music, :price_meter, :neighborhood_id, :image_url, :description)
  end
end
