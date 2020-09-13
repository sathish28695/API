class Cart < ApplicationRecord
  has_many :products
  belongs_to :user

  def add_product(product_params)
    product = Product.find_by_id(product_params.to_i)
    self.products.push(product)  
  end
end
