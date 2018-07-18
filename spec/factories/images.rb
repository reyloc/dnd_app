# frozen_string_literal: true

FactoryBot.define do
  factory :image do
    file 'default.png'
    author 'Test Author'
    title 'Test Image'
  end
end
