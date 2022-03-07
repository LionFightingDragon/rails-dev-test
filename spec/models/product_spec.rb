# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'a product' do
    it 'is invalid then it fails to save' do
      product = Product.new
      expect(product.save).to eq false
    end
    it 'is has mandatory fields: name and price' do
      price = Product.new(name: 'some name', price: '1')
      expect(price.save).to eq true
    end
  end
end
