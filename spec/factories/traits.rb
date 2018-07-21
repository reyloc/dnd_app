# frozen_string_literal: true

FactoryBot.define do
  factory :trait do
    name 'Test trait'
    is_public false
    race_id Race.first.id
    user_id User.first.id
  end
end
