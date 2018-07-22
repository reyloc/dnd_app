# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ideal, type: :model do
  let(:ideal) { build(:ideal) }
  it { expect(ideal).to validate_presence_of :name }
  it { expect(ideal).to validate_presence_of :description }
end
