# frozen_string_literal: true

FactoryBot.define do
  factory :ideal do
    background_id Background.first.id
    name 'Test'
    description 'Test'
  end
end
