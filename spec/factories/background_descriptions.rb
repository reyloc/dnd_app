# frozen_string_literal: true

FactoryBot.define do
  factory :background_description do
    background_id Background.first.id
    description 'Test'
  end
end
