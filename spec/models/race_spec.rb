# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Race, type: :model do
  let(:race) { build(:race) }
  it { expect(race).to validate_presence_of :name }
  it { expect(race).to validate_uniqueness_of :name }
  it { expect(race).to validate_presence_of :description }
  it 'user_id should be that of a dm' do
    expect(race.user.dm?).to be true
  end
  it 'public should be false' do
    expect(race.is_public?).to be false
  end
end
