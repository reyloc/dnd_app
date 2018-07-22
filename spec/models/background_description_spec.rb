# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BackgroundDescription, type: :model do
  let(:bd) { build(:background_description) }
  it { expect(bd).to validate_presence_of :description }
end
