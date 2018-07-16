# frozen_string_literal: true

FactoryBot.define do
  factory :alignment do
    name 'Test Alignment'
    description 'This is a test description'
    is_public false
    user_id User.first.id
  end
end
