# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Alignment, type: :model do
  let(:alignment) { build(:alignment) }
  it { expect(alignment).to validate_presence_of :name }
  it { expect(alignment).to validate_uniqueness_of :name }
  it { expect(alignment).to validate_presence_of :description }
  it 'public should be false' do
    expect(alignment.is_public).to be false
  end
  it 'user_id should be that of a DM' do
    expect(alignment.user.dm?).to be true
  end
end
