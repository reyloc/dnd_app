# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RealmDescription, type: :model do
  let(:rd) { build(:realm_description) }
  it { expect(rd).to validate_presence_of :description }
end
