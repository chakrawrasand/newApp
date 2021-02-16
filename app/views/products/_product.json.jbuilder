json.extract! product, :id, :nama, :deskripsi, :gambar, :harga, :created_at, :updated_at
json.url product_url(product, format: :json)
