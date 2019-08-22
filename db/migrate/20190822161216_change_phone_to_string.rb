class ChangePhoneToString < ActiveRecord::Migration[5.2]
  def change
	change_column :offers, :phone, :string
  end
end
