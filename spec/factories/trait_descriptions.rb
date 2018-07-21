# frozen_string_literal: true

FactoryBot.define do
  factory :trait_description do
    trait_id Trait.first.id
    description 'Test description'
  end
end
