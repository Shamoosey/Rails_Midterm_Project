# frozen_string_literal: true

class AddCityToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :city, :string
  end
end
