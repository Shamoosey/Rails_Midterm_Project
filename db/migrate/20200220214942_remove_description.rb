class RemoveDescription < ActiveRecord::Migration[6.0]
  def change
    remove_column :beers, :description, :string
  end
end
