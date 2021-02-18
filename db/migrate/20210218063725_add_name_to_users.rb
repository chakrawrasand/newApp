class AddNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nama, :string
    add_column :users, :alamat, :text
    add_column :users, :phone, :integer
  end
end
