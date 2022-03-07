# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Customer, type: :model do
  context 'a customer' do
    it 'is invalid then it fails to save' do
      customer = Customer.new(name: 'invalid customer')
      expect(customer.save).to eq false
    end
    it 'is has mandatory fields: email, address, credit_card' do
      customer = Customer.new(email: 'example@mail.com', address: 'Main Road', credit_card: '1234')
      expect(customer.save).to eq true
    end
  end
end
