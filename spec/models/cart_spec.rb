# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cart, type: :model do
  context 'cart' do
    it 'has total price sum eq 0' do
      cart = Cart.new
      expect(cart.sub_total).to eq(0)
    end
    it 'products can be added to a cart' do
      cart = Cart.create
      prod1 = Product.create(name: 'prod1', price: '1')
      cart.products << prod1
      expect(cart.products.count).to eq(1)
    end
    it 'products can be removed from a cart' do
      prod1 = Product.create(name: 'prod1', price: '1')
      cart = Cart.create
      cart.products << prod1
      expect(cart.products.count).to eq(1)
    end
    it 'calculates price for all products' do
      prod1 = Product.create(name: 'prod1', price: '2')
      prod2 = Product.create(name: 'prod2', price: '3')
      line_item1 = LineItem.create(product: prod1, quantity: 2)
      line_item2 = LineItem.create(product: prod2, quantity: 2)
      cart = Cart.create
      cart.line_items << line_item1
      cart.line_items << line_item2
      expect(cart.sub_total).to eq(10)
    end
  end
end
