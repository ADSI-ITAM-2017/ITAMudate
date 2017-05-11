class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :description
      t.string :address
      t.float :price
      t.string :ownerName
      t.string :ownerPhone
      t.string :ownerEmail

      t.timestamps
    end
  end
end
