# frozen_string_literal: true

class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.text :address
      t.string :credit_card

      t.timestamps
    end
  end
end
