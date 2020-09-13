require 'rails_helper'

RSpec.describe 'User', :type => :request do
  describe "login" do
    let!(:user) {FactoryBot.create(:user) }
    before { post '/api/v1/login', params: {login: user.login, password: user.password}}
    
    it "checks the authentication token" do
      expect(JSON.parse(response.body)["auth_token"]).to eq(user.auth_token) 
    end

    include_examples 'responds to status'  
  end
end