# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EquipmentDescription, type: :model do
  let(:ed) { build(:equipment_description) }
  it { expect(ed).to validate_presence_of :description }
end
