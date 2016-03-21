class AddImagesToNeighborhoodsAndBars < ActiveRecord::Migration
  def change
    add_column :bars, :image_url, :string
    add_column :neighborhoods, :image_url, :string
  end
end
