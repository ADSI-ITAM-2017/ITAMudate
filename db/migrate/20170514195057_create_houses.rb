class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :title
      t.string :description
      t.string :address
      t.float :price
      t.float :bathrooom
      t.string :email
      t.timestamps
    end
  end
end
