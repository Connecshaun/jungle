require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'creates a product' do
      @category = Category.create(name: "comics")
      @product = Product.create(name: "Shang-Chi", price: $6, quantity: 10, category: @category)
    end
    
    it 'contains a product name' do
      @category = Category.create(name: "comics")
      @product = Product.create(name: nil, price: 6, quantity: 10, category: @category)
    end

    it 'contains a product price' do
      @category = Category.create(name: "comics")
      @product = Product.create(name: "Shang-Chi", price: nil, quantity: 10, category: @category)
    end

  end
end
