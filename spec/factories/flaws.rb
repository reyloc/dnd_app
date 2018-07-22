# frozen_string_literal: true

FactoryBot.define do
  factory :flaw do
    background_id Background.first.id
    description 'Test'
  end
end
