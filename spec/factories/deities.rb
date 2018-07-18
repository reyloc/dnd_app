# frozen_string_literal: true

FactoryBot.define do
  factory :deity do
    name 'Test Deity'
    symbol 'Test symbol'
    of 'of testing'
    is_public false
    user_id User.first.id
    realm_id Realm.first.id
    alignment_id Alignment.first.id
  end
end
