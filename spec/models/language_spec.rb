# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Language, type: :model do
  let(:language) { build(:language) }
  it { expect(language).to validate_presence_of :name }
  it { expect(language).to validate_uniqueness_of :name }
  it { expect(language).to validate_presence_of :description }
  it { expect(language).to validate_presence_of :selector }
  it { expect(language).to validate_presence_of :source_file }
  it { expect(language).to validate_presence_of :file_format }
  it { expect(language).to validate_presence_of :font_size }
  it 'user_id should be that of a DM' do
    expect(language.user.dm?).to be true
  end
  it 'public should be false' do
    expect(language.public?).to be false
  end
  it 'source_file should exist' do
    path = File.join(Rails.root, 'app', 'assets', 'fonts', language.source_file)
    expect(File.file?(path)).to be true
  end
end
