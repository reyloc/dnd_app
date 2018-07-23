# frozen_string_literal: true

FactoryBot.define do
  factory :equipment do
    name 'Test Equipment'
    equipment_type_id EquipmentType.first.id
    subtype 'Test'
    weight 1
    cost 1
    currency 'gp'
    is_public false
    user_id User.first.id
  end
end
