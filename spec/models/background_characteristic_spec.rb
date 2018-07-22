# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BackgroundCharacteristic, type: :model do
  let(:bc) { build(:background_characteristic) }
  it { expect(bc).to validate_presence_of :name }
end
