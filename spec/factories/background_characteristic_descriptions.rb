# frozen_string_literal: true

FactoryBot.define do
  factory :background_characteristic_description do
    background_characteristic_id BackgroundCharacteristic.first.id
    description 'Test description'
  end
end
