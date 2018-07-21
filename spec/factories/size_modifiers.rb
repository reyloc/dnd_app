# frozen_string_literal: true

FactoryBot.define do
  factory :size_modifier do
    size_id Size.first.id
    attack 1
    special 1
    hide 1
    tall_reach 1
    long_reach 1
    biped_carrying 1
    quadruped_carrying 1
  end
end
