# frozen_string_literal: true

FactoryBot.define do
  factory :tool do
    name 'Test Tool'
    description 'Description for Test Tool'
    type 'Test Type'
    is_public false
    user_id User.first.id
  end
end
