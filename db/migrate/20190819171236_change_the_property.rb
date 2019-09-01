class ChangeTheProperty < ActiveRecord::Migration[5.2]
  def change
    change_column :properties, :service, :string
    change_column :properties, :availability, :string
    change_column :properties, :property_type, :string
    change_column :properties, :furnishing, :string
    change_column :properties, :parking, :string
  end
end
