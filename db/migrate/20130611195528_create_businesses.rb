class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table(:businesses) do |t|
      t.string :name
      t.string :phone_number
      t.string :legal_structure
      t.integer :number_of_employees

      t.references :user

      t.timestamps
    end
  end
end
