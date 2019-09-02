class SetIntegerToFeatured < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :featured
  	add_column :properties, :feature, :integer, default: 0
  end
end
