class Product < ApplicationRecord
    validates :nama, allow_blank: false, uniqueness:{message: "%{value} sudah terdaftar"}
    validates :harga, numericality: {
        greater_than_or_equal_to: 1000,
        message: "harus lebih dari 1000"
    }
    has_many :line_items
    before_destroy :ensure_not_referenced_by_any_line_item

    private
    def ensure_not_referenced_by_any_line_item
        unless line_items.empty?
            errors.add(:base, 'line items present')
            throw :abort
        end
    end
end
