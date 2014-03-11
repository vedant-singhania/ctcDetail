class CreateCrews < ActiveRecord::Migration
  def up
    create_table :crews do |t|
      t.string :car_number
      t.string :driver_name
      t.string :phone_number

      t.timestamps
    end
  end
  def down
    drop_table :crews
  end
end
