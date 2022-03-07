# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LineItem, type: :model do
  context 'a line_item' do
    it 'calulates price of product for its quantity' do
      product = Product.create(name: 'prod1', price: '10')
      line_item = LineItem.create(quantity: 5, product: product)
      expect(line_item.total_price).to eq 50
    end
  end
end
