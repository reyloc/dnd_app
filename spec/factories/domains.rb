# frozen_string_literal: true

FactoryBot.define do
  factory :domain do
    name 'Test Domain'
    description 'Description for Test Domain'
    is_public false
    user_id User.first.id
  end
end
