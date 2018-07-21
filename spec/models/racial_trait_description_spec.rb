# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RacialTraitDescription, type: :model do
  let(:rtd) { build(:racial_trait_description) }
  it { expect(rtd).to validate_presence_of :description }
end
