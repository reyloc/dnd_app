# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Image, type: :model do
  let(:image) { build(:image) }
  it { expect(image).to validate_presence_of :file }
  it { expect(image).to validate_uniqueness_of :file }
  it 'image file should exist' do
    path = File.join(Rails.root, 'app', 'assets', 'images', image.file)
    expect(File.file?(path)).to be true
  end
  it { expect(image).to validate_presence_of :author }
  it { expect(image).to validate_presence_of :title }
end
