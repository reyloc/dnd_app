# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EquipmentDetail, type: :model do
  let(:ed) { build(:equipment_detail) }
  it { expect(ed).to validate_presence_of :name }
  it { expect(ed).to validate_presence_of :value }
end
