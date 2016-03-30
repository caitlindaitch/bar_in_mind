class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorited_bars
  end
end
