class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :subdomain
      t.integer :user_id

      t.timestamps
    end
  end
end
