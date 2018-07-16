# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Skill, type: :model do
  let(:skill) { build(:skill) }
  it { expect(skill).to validate_presence_of :name }
  it { expect(skill).to validate_uniqueness_of :name }
  it { expect(skill).to validate_presence_of :description }
  it 'public should be false' do
    expect(skill.public?).to be false
  end
  it 'user_id should be that of a DM' do
    expect(skill.user.dm?).to be true
  end
end
