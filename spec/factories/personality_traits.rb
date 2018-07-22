# frozen_string_literal: true

FactoryBot.define do
  factory :personality_trait do
    background_id Background.first.id
    description 'Test'
  end
end
