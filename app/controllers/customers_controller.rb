# frozen_string_literal: true

class CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end
end
