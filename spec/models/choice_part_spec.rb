# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ChoicePart, type: :model do
  let(:choice) { build(:choice_part) }
  it { expect(choice).to validate_presence_of :quantity }
end
