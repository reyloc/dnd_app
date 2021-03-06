# frozen_string_literal: true

# equipment type model
class EquipmentType < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :equipments
end
