# frozen_string_literal: true

class Beer < ApplicationRecord
  belongs_to :brewery
  validates :name, :brewery_id, presence: true
end
