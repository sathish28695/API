require 'rails_helper'

RSpec.describe 'Product', :type => :model do
  it "should have valid factory" do
    expect(FactoryBot.create(:products)).to be_valid
  end

  context 'validations' do 
    let!(:valid_product) {FactoryBot.create(:products)}
    it "is invalid without a name" do
      product = Product.new(name: nil)
      product.valid?
      expect(product.errors[:name]).to include("can't be blank") 
    end

    it "is invalid with a duplicate name" do
      product = Product.new(:name => valid_product.name)
      product.valid?
      expect(product.errors[:name]).to include("has already been taken") 
    end

    it "is invalid without a description" do
      product = Product.new(description: nil)
      product.valid?
      expect(product.errors[:description]).to include("can't be blank") 
    end

    it "is invalid without a price" do
      product = Product.new(price: nil)
      product.valid?
      expect(product.errors[:price]).to include("can't be blank") 
    end

    it "is valid with the make" do
      expect(valid_product.make.to_s.length).to eq(4) 
    end

    it "is invalid without a make" do
      product = Product.new(make: nil)
      product.valid?
      expect(product.errors[:make]).to include("can't be blank") 
    end
  end
end