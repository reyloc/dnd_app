# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Background, type: :model do
  let(:background) { build(:background) }
  it { expect(background).to validate_presence_of :name }
  it { expect(background).to validate_uniqueness_of :name }
  it { expect(background).to validate_presence_of :suggested_characteristics }
  it 'user_id should be that of a dm' do
    expect(background.user.dm?).to be true
  end
  it 'public should be false' do
    expect(background.public?).to be false
  end
end
