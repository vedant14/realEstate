class DropUserIdFromAccounts < ActiveRecord::Migration[5.2]
	def change
	    remove_column :accounts, :user_id
	end
end
