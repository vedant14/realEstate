class AddStatusToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :status, :integer
  end
end
