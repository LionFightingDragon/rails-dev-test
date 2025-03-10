# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_220_228_010_053) do
  create_table 'active_admin_comments', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb3', force: :cascade do |t|
    t.string 'namespace'
    t.text 'body'
    t.string 'resource_type'
    t.bigint 'resource_id'
    t.string 'author_type'
    t.bigint 'author_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[author_type author_id], name: 'index_active_admin_comments_on_author_type_and_author_id'
    t.index ['namespace'], name: 'index_active_admin_comments_on_namespace'
    t.index %w[resource_type resource_id], name: 'index_active_admin_comments_on_resource_type_and_resource_id'
  end

  create_table 'admin_users', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb3', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_admin_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_admin_users_on_reset_password_token', unique: true
  end

  create_table 'carts', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb3', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'customers', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb3', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.text 'address'
    t.string 'credit_card'
    t.integer 'order_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'line_items', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb3', force: :cascade do |t|
    t.integer 'quantity', default: 1
    t.integer 'product_id'
    t.integer 'cart_id'
    t.integer 'order_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'orders', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb3', force: :cascade do |t|
    t.integer 'customer_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'products', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb3', force: :cascade do |t|
    t.string 'name'
    t.decimal 'price', precision: 10, default: '0'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
