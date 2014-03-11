class CreatePackages < ActiveRecord::Migration
  def up
    create_table :packages do |t|
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
  def down
    drop_table :packages
  end
end
