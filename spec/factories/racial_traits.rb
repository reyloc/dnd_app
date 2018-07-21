# frozen_string_literal: true

FactoryBot.define do
  factory :racial_trait do
    race_id Race.first.id
    name 'Test racial trait'
  end
end
