# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Equipment, type: :model do
  let(:equipment) { build(:equipment) }
  it { expect(equipment).to validate_presence_of :name }
  it { expect(equipment).to validate_uniqueness_of :name }
  it 'user_id should be that of a dm' do
    expect(equipment.user.dm?).to be true
  end
  it 'public should be false' do
    expect(equipment.is_public?).to be false
  end
end
