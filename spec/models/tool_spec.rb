# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tool, type: :model do
  let(:tool) { build(:tool) }
  it { expect(tool).to validate_presence_of :name }
  it { expect(tool).to validate_uniqueness_of :name }
  it 'public should be false' do
    expect(tool.public?).to be false
  end
  it 'user_id should be that of a DM' do
    expect(tool.user.dm?).to be true
  end
end
