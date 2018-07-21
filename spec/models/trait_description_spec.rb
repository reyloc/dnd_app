# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TraitDescription, type: :model do
  let(:td) { build(:trait_description) }
  it { expect(td).to validate_presence_of :description }
end
