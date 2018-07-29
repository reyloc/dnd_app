# frozen_string_literal: true

FactoryBot.define do
  factory :choice_part do
    equipment_choice_id EquipmentChoice.first.id
    equipment_id Equipment.first.id
    quantity 10
  end
end
