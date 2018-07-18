# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DeityDomain, type: :model do
  let(:dd) { build(:deity_domain) }
  it 'should link to a deity' do
    expect(dd.deity).to eq Deity.first
  end
  it 'should link to a domain' do
    expect(dd.domain).to eq Domain.first
  end
end
