require 'rails_helper'

RSpec.describe 'Products API', :type => :request do
  
  describe 'responds to' do
    
    let!(:products) { FactoryBot.create_list(:products, 2)}
    before { get '/api/v1/list_products'}

    it 'returns products' do
      expect(JSON.parse(response.body)["products"].size).to  eq(2)
    end 

    include_examples 'responds to status'
  end 
end