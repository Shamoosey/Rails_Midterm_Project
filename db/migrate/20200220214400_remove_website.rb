# frozen_string_literal: true

class RemoveWebsite < ActiveRecord::Migration[6.0]
  def change
    remove_column :breweries, :website, :string
  end
end
