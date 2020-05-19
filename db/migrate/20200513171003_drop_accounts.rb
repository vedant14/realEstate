class DropAccounts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :account_id
  	drop_table :accounts
  end
end
