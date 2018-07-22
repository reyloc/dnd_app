# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FeatureDescription, type: :model do
  let(:fd) { build(:feature_description) }
  it { expect(fd).to validate_presence_of :description }
end
