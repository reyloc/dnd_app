# frozen_string_literal: true

FactoryBot.define do
  factory :race do
    name 'Test race'
    description 'description for test race'
    ability_score_points 0
    age 'test'
    alignment 'test'
    size_id 3
    size_info 'test'
    speed 30
    speed_info 'test'
    language_variants 0
    base_height 1
    height_mod 'test'
    base_weight 1
    weight_mod 'test'
    is_public false
    user_id User.first.id
  end
end
