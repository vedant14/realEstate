class SetDefaultsToStatus < ActiveRecord::Migration[5.2]
  def change
  	change_column :companies, :status, :integer, :default => 0
  end
end
