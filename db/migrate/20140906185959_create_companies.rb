class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :about
      t.string :profile
      t.string :customers_profile

      t.timestamps
    end
  end
end
