# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PersonalityTrait, type: :model do
  let(:pt) { build(:personality_trait) }
  it { expect(pt).to validate_presence_of :description }
end
