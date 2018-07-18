# frozen_string_literal: true

FactoryBot.define do
  factory :realm_description do
    realm_id Realm.first.id
    description 'Test description'
  end
end
