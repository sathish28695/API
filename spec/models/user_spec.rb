require 'rails_helper'

RSpec::describe User, type: :model do
  describe 'Performs the assocation checks' do
    it { should have_one(:cart).dependent(:destroy)} 
  end

  it 'has a valid factory' do
    expect(FactoryBot.create(:user)).to be_valid
  end

  context 'validations' do 
    it { should validate_presence_of(:login)}
    it { should validate_presence_of(:password)}
  end
end