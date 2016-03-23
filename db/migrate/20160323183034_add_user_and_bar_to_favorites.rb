class AddUserAndBarToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :user_id, :integer
    add_column :favorites, :bar_id, :integer
  end
end
