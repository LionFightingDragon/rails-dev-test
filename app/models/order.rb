# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  belongs_to :customer

  def total_price
    order_price = 0
    line_items.map { |item| order_price += item.total_price }
    order_price
  end
end
