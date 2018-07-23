# frozen_string_literal: true

FactoryBot.define do
  factory :equipment_detail do
    equipment_id Equipment.first.id
    name 'Test detail'
    value 'Test value'
  end
end
