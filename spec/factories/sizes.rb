# frozen_string_literal: true

FactoryBot.define do
  factory :size do
    name 'Test Size'
    min_height 5
    max_height 10
    space 5
    user_id User.first.id
  end
end
