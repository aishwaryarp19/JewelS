class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :Customer_Name
      t.text :Customer_address
      t.integer :Contact_Number
      t.string :Product_Name
      t.integer :Price

      t.timestamps
    end
  end
end
