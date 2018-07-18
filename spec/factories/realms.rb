# frozen_string_literal: true

FactoryBot.define do
  factory :realm do
    name 'Test Realm'
    is_public false
    user_id User.first.id
  end
end
