# frozen_string_literal: true

# background equipment model
class BackgroundEquipment < ApplicationRecord
  belongs_to :background
  belongs_to :equipment_choice
end
