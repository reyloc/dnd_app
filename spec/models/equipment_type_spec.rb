# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EquipmentType, type: :model do
  let(:et) { build(:equipment_type) }
  it { expect(et).to validate_presence_of :name }
  it { expect(et).to validate_uniqueness_of :name }
end
