class DropProductsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :tags
    drop_table :taggings
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
 