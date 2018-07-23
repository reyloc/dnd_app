# frozen_string_literal: true

# background characteristic model
class BackgroundCharacteristic < ApplicationRecord
  validates :name, presence: true
  belongs_to :background
  belongs_to :table, optional: true
  has_many :background_characteristic_descriptions
end
