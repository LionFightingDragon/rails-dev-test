# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'order' do
    it 'it will not save without a customer' do
      order = Order.new(customer: nil)
      expect(order.save).to eq false
    end
    it 'it will save with a valid customer' do
      customer = Customer.create(email: 'test@email.com', address: 'Main Rd 1/19', credit_card: '123456')
      order = Order.new(customer: customer)
      expect(order.save).to eq true
    end

    it 'it has the same line items as the cart' do
      customer = Customer.create(email: 'test@email.com', address: 'Main Rd 1/19', credit_card: '123456')
      prod1 = Product.create(name: 'prod1', price: '2')
      prod2 = Product.create(name: 'prod2', price: '3')
      line_item1 = LineItem.create(product: prod1, quantity: 2)
      line_item2 = LineItem.create(product: prod2, quantity: 2)
      cart = Cart.create
      cart.line_items << line_item1
      cart.line_items << line_item2
      order = Order.create(customer: customer, line_items: cart.line_items)

      expect(order.line_items).to eq cart.line_items
    end
  end
end
