class CreateAppointments < ActiveRecord::Migration
  def up
    create_table :appointments do |t|
      t.references :customer
      t.references :package
      t.references :crew
      t.date :appointment_date
      t.date :appointments_today
      t.time :appointment_time
      t.integer :number_of_cars
      t.string :location_type
      

      t.timestamps
    end
    add_index :appointments, ["customer_id","package_id","crew_id"]
  end
  
  def down
    drop_table :appointments
  end
end
