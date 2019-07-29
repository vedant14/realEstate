class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.text :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
