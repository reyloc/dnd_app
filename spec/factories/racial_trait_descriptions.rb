# frozen_string_literal: true

FactoryBot.define do
  factory :racial_trait_description do
    racial_trait_id RacialTrait.first.id
    description 'Test racial trait description'
  end
end
