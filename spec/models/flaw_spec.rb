# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Flaw, type: :model do
  let(:flaw) { build(:flaw) }
  it { expect(flaw).to validate_presence_of :description }
end
