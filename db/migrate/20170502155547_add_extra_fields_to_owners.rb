class AddExtraFieldsToOwners < ActiveRecord::Migration[5.0]
  def change
    add_column :owners, :first_name, :string
    add_column :owners, :last_name, :string
    add_column :owners, :email, :string
    add_column :owners, :password_digest, :string
  end
end
