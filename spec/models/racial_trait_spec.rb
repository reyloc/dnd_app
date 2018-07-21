# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RacialTrait, type: :model do
  let(:rt) { build(:racial_trait) }
  it { expect(rt).to validate_presence_of :name }
end
