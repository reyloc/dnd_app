# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Trait, type: :model do
  let(:trait) { build(:trait) }
  it { expect(trait).to validate_presence_of :name }
  it { expect(trait).to validate_uniqueness_of :name }
  it 'public should be false' do
    expect(trait.is_public?).to be false
  end
  it 'user_id should be that of a DM' do
    expect(trait.user.dm?).to be true
  end
end
