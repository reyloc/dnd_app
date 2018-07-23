# frozen_string_literal: true

FactoryBot.define do
  factory :equipment_description do
    equipment_id Equipment.first.id
    description 'Test equipment description'
  end
end
