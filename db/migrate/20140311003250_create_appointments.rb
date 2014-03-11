class CreateAppointments < ActiveRecord::Migration
  def up
    create_table :appointments do |t|
      t.references :customer
      t.references :package
      t.datetime :appointment_date
      t.datetime :appointment_time
      t.integer :number_of_cars
      t.string :location
      t.string :location_type
      t.string :gender_of_customer

      t.timestamps
    end
    add_index :appointments, ["customer_id","package_id"]
  end
  
  def down
    drop_table :appointments
  end
end
