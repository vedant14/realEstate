class DropAccountFromProperties < ActiveRecord::Migration[5.2]
	def change
	    remove_column :properties, :account_id
	end
end
