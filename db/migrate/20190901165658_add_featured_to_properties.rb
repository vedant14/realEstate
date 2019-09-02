class AddFeaturedToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :featured, :string
  end
end
