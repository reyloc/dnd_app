# frozen_string_literal: true

FactoryBot.define do
  factory :feature_description do
    feature_id Feature.first.id
    description 'Test description'
  end
end
