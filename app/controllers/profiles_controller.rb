class ProfilesController < ApplicationController
  def show
    @neighborhood = Neighborhood.find(params[:id])
    @bars = @neighborhood.bars

    @profile = Profile.find(params[:id])
  end
end
