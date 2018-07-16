# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ability, type: :model do
  let(:ability) { build(:ability) }
  it { expect(ability).to validate_presence_of :name }
  it { expect(ability).to validate_uniqueness_of :name }
  it { expect(ability).to validate_presence_of :description }
end
