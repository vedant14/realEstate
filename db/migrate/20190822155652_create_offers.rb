class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.references :property, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :phone
      t.integer :uniqueid

      t.timestamps
    end
  end
end
