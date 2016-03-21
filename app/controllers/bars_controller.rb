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
    @bar = @neighborhood.bars.create(bar_params)

    redirect_to neighborhood_bar_url(@neighborhood, @bar)
  end

  def show
    @bar = Bar.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @bar = Bar.find(params[:id])
    @bar.destroy

    redirect_to @neighborhood
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :category, :music, :price_meter, :neighborhood_id, :image_url)
  end
end
