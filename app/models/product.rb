# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :line_items, dependent: :destroy
  validates_presence_of :name, :price
end
