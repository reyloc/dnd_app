# frozen_string_literal:true

# equipment choice
class EquipmentChoice < ApplicationRecord
  has_many :choice_parts
end
