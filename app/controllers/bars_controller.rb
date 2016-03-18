class BarsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.create(bar_params)
  end

  def show
    @bar = Bar.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def neighborhood_params
    params.require(:bar).permit(:name, :category, :music, :price_meter, :neighborhood_id)
  end
end
