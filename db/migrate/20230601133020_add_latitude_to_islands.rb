class AddLatitudeToIslands < ActiveRecord::Migration[7.0]
  def change
    add_column :islands, :latitude, :float
  end
end
