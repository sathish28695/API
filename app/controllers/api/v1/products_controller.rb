class Api::V1::ProductsController < ApplicationController
  def list_products
    products = Product.all.as_json
    json_response({products: products})
  end
end


