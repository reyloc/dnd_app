# frozen_string_literal: true

FactoryBot.define do
  factory :deity_domain do
    deity_id Deity.first.id
    domain_id Domain.first.id
  end
end
