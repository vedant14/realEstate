class AddLongitudeToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :latitude, :decimal
    add_column :properties, :longitude, :decimal
  end
end
