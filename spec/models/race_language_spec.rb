# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RaceLanguage, type: :model do
  let(:rl) { build(:race_language) }
  it 'race_id should be that of a public race' do
    expect(rl.race.public?).to be true
  end
  it 'language_id should be that of a public language' do
    expect(rl.language.public?).to be true
  end
end
