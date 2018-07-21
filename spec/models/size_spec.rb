# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Size, type: :model do
  let(:size) { build(:size) }
  it { expect(size).to validate_presence_of :name }
  it { expect(size).to validate_uniqueness_of :name }
  it 'user_id should be that of a dm' do
    expect(size.user.dm?).to be true
  end
  it 'public should be false' do
    expect(size.public?).to be false
  end
  it 'min_height should be less than max_height' do
    expect(size.max_height).to be > size.min_height
  end
end
