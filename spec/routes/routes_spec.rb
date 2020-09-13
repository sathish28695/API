require 'rails_helper'

RSpec.describe 'API Endpoints', :type => :routing do
  describe "routing" do
    it "routes to user login" do
      expect(:post => '/api/v1/login').to route_to('api/v1/users#login') 
    end

    it "routes to list products" do
      expect(:get => '/api/v1/list_products').to route_to('api/v1/products#list_products') 
    end
  end
end