class SetDefaultToFeatured < ActiveRecord::Migration[5.2]
  def change
  	change_column :properties, :featured, :string, default: 0
  end
end
