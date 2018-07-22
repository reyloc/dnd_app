# frozen_string_literal: true

FactoryBot.define do
  factory :background_characteristic do
    background_id Background.first.id
    name 'Test Background Characteristc'
  end
end
