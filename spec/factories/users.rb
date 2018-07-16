# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    username 'test_user'
    email 'test@example.com'
    full_name 'Test User'
    password 'test_password'
    admin true
    dm true
  end
end
