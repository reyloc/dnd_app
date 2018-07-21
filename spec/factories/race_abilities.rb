# frozen_string_literal: true

FactoryBot.define do
  factory :race_ability do
    race_id Race.first.id
    ability_id Ability.first.id
    modifier(-1)
  end
end
