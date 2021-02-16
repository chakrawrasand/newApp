class StoreController < ApplicationController
  def index
    @products = Product.order(:nama)
  end
end
