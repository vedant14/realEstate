class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :search_society
      t.string :search_city
      t.integer :search_bedroom
      t.decimal :max_price
      t.decimal :min_price


      t.timestamps
    end
  end
end
