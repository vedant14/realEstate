class AddAccountIdToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :account_id, :integer
  end
end
