# frozen_string_literal: true

FactoryBot.define do
  factory :skill do
    name 'Test Skill'
    description 'Test description for Test Skill'
    ability_id Ability.first.id
    is_public false
    user_id User.first.id
  end
end
