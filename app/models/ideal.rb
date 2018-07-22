# frozen_string_literal: true

# ideal model
class Ideal < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :background
end
