# frozen_string_literal: true

FactoryBot.define do
  factory :background do
    name 'Test background'
    suggested_characteristics 'Test'
    language_variants 1
    feature_id Feature.first.id
    is_public false
    user_id User.first.id
  end
end
