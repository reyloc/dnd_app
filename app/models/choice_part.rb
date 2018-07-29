# frozen_string_literal: true

# choice part model
class ChoicePart < ApplicationRecord
  validates :quantity, presence: true
  belongs_to :equipment_choice
  belongs_to :equipment
end
