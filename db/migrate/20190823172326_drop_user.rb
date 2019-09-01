class DropUser < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :uniqueid, :integer
    remove_column :offers, :user_id
  end
end
