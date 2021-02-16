class Product < ApplicationRecord
    validates :nama, allow_blank: false, uniqueness:{message: "%{value} sudah terdaftar"}
    validates :harga, numericality: {
        only_integer: true,
        greater_than_or_equal_to: 1000,
        message: "harus lebih dari Rp. 1000"
    }
end
