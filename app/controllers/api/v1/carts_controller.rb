class Api::V1::CartsController < ApplicationController
  before_action :authenticate_user, :verify_user_id?

  def display_cart
    json_response({products: @user.cart.products.as_json})
  end

  def add_product
    begin
      cart = @user.cart
      cart.add_product(params[:product_id])
      json_response({message: 'Product added successfully'})
    rescue Exception => e
      error(e.message)
    end
  end

  def verify_user_id?
    unauthorized unless params[:user_id].to_i == @user.id
  end
end