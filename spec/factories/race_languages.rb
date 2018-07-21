# frozen_string_literal: true

FactoryBot.define do
  factory :race_language do
    race_id Race.first.id
    language_id Language.first.id
  end
end
