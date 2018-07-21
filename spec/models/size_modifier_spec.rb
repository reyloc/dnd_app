# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SizeModifier, type: :model do
  let(:sm) { build(:size_modifier) }
  it 'size_id should be that of a public size' do
    expect(sm.size.public?).to be true
  end
end
