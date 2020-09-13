require 'rails_helper'

RSpec.describe 'Cart API', :type => :request do
  
  describe 'Add products' do

    let!(:user) {FactoryBot.create(:user)}
    let!(:products) { FactoryBot.create(:products)}
    before do
      post '/api/v1/1/add_product', params: {:product_id => products.id}, headers: {:authorization => user.auth_token}
    end

    it "should add products to the cart" do
      expect(user.cart.products.size).to eq(1) 
    end

    include_examples 'responds to status'
  end

  describe 'Display cart' do

    let!(:user) {FactoryBot.create(:user)}
    before do
      get '/api/v1/1/cart', headers: {:authorization => user.auth_token}
    end

    it "should get the cart for the user" do
      expect(user.cart.user_id).to eq(1) 
    end 

    it "should get the products from cart for the user" do
      expect(user.cart.products.size).to eq(0) 
    end 

    include_examples 'responds to status' 
  end
end