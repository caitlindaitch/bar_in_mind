class CreateProfilesTable < ActiveRecord::Migration
  def change
    create_table :profiles_tables do |t|
      t.belongs_to :users
    end
  end
end
