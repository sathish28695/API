require 'rails_helper'

RSpec::describe Cart, type: :model do

  describe 'Performs the association checks' do
    it { should belong_to(:user)} 
  end

  describe 'add products to the user cart' do
    it "should add the product to the cart" do 
      product = FactoryBot.create(:products)
      user = FactoryBot.create(:user)
      cart = user.cart
      cart.add_product(product.id)
      expect(cart.products.last.id).to eq(1) 
    end
  end
end