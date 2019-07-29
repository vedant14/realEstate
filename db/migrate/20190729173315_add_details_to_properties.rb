class AddDetailsToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :bedroom, :integer
    add_column :properties, :city, :string
    add_column :properties, :pincode, :integer
    add_column :properties, :society_name, :string
    add_column :properties, :unit_no, :integer
    add_column :properties, :service, :integer, default: 0
    add_column :properties, :property_type, :integer
    add_column :properties, :super_built_up_area, :float
    add_column :properties, :carpet_area, :float
    add_column :properties, :bathroom, :integer
    add_column :properties, :balcony, :integer
    add_column :properties, :furnishing, :integer
    add_column :properties, :total_floors, :integer
    add_column :properties, :on_floor, :integer
    add_column :properties, :availability, :integer, default: 0
    add_column :properties, :parking, :integer
    add_column :properties, :price, :decimal
    add_column :properties, :description, :text
    add_column :properties, :status, :integer, default: 0
  end
end
