# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Realm, type: :model do
  let(:realm) { build(:realm) }
  it { expect(realm).to validate_presence_of :name }
  it { expect(realm).to validate_uniqueness_of :name }
  it 'user_id should be that of a DM' do
    expect(realm.user.dm?).to be true
  end
  it 'should not be public' do
    expect(realm.is_public?).to be false
  end
end
