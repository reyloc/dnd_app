# frozen_string_literal: true

# equipment detail model
class EquipmentDetail < ApplicationRecord
  validates :name, :value, presence: true
  belongs_to :equipment
end
