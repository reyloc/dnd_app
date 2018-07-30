# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Deity, type: :model do
  let(:deity) { build(:deity) }
  it { expect(deity).to validate_presence_of :name }
  it { expect(deity).to validate_uniqueness_of :name }
  it { expect(deity).to validate_presence_of :symbol }
  it { expect(deity).to validate_presence_of :of }
  it 'user_id should be that of a DM' do
    expect(deity.user.dm?).to be true
  end
  it 'public should be false' do
    expect(deity.is_public?).to be false
  end
end
