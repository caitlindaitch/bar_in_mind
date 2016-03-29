class BarsController < ApplicationController
    before_action :set_hood, only: [:new, :create, :show, :edit, :update, :destroy]
  def index
    @neighborhoods = Neighborhood.all
  end

  def new
    @bar = @neighborhood.bars.new
  end

  def create
    @bar = @neighborhood.bars.create(bar_params.merge(user: current_user))

    redirect_to neighborhood_bar_url(@neighborhood, @bar)
  end

  def show
    @bar = @neighborhood.bars.find(params[:id])
  end

  def edit
    @bar = @neighborhood.bars.find(params[:id])
  end

  def update
    @bar = @neighborhood.bars.find(params[:id])
    @bar.update(bar_params)

    redirect_to neighborhood_bar_url(@neighborhood, @bar)
  end

  def destroy
    @bar = @neighborhood.bars.find(params[:id])
    @bar.destroy

    redirect_to @neighborhood
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :category, :music, :price_meter, :neighborhood_id, :image_url, :description)
  end

# you can define and create another private method here for finding the neighborhood using params like so and then above
# call before_action :set_hood which will call this method before each restful action, essentially allowing you delete all instances
# of the same code in each restful action. 
  def set_hood
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end
end
