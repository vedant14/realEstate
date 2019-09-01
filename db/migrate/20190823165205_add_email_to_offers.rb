class AddEmailToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :email, :string
    remove_column :offers, :uniqueid
    add_column :offers, :full_name, :string
    drop_table :searches
  end
end
