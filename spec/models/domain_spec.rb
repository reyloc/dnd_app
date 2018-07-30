# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Domain, type: :model do
  let(:domain) { build(:domain) }
  it { expect(domain).to validate_presence_of :name }
  it { expect(domain).to validate_uniqueness_of :name }
  it { expect(domain).to validate_presence_of :description }
  it 'public should be false' do
    expect(domain.is_public?).to be false
  end
  it 'user_id should be that of a DM' do
    expect(domain.user.dm?).to be true
  end
end
