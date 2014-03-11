class CreateCustomers < ActiveRecord::Migration
  def up
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :gender_of_customer
      t.string :car

      t.timestamps
    end
  end
  def down
    drop_table :customers
  end
end
