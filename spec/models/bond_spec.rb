# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Bond, type: :model do
  let(:bond) { build(:bond) }
  it { expect(bond).to validate_presence_of :description }
end
