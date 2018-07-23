# frozen_string_literal: true

# background characteristic description model
class BackgroundCharacteristicDescription < ApplicationRecord
  validates :description, presence: true
  belongs_to :background_characteristic
end
