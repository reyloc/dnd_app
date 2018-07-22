# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Feature, type: :model do
  let(:feature) { build(:feature) }
  it { expect(feature).to validate_presence_of :name }
  it 'user_id should be that of a dm' do
    expect(feature.user.dm?).to be true
  end
  it 'public should be false' do
    expect(feature.public?).to be false
  end
end
