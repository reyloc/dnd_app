# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BackgroundCharacteristicDescription, type: :model do
  let(:bcd) { build(:background_characteristic_description) }
  it { expect(bcd).to validate_presence_of :description }
end
