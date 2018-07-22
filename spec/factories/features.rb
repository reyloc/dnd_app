# frozen_string_literal: true

FactoryBot.define do
  factory :feature do
    name 'Test feature'
    is_public false
    user_id User.first.id
  end
end
