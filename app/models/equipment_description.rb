# frozen_string_literal: true

# equipment description model
class EquipmentDescription < ApplicationRecord
  validates :description, presence: true
  belongs_to :equipment
end
