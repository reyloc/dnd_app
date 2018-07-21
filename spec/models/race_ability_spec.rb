# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RaceAbility, type: :model do
  let(:ra) { build(:race_ability) }
  it 'modifier should not be zero' do
    expect(ra.modifier).not_to be eq 0
  end
end
