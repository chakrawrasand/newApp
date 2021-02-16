class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :nama
      t.text :deskripsi
      t.string :gambar
      t.decimal :harga, precision: 8, scale: 2

      t.timestamps
    end
  end
end
