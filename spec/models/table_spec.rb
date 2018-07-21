# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Table, type: :model do
  let(:table) { build(:table) }
  it { expect(table).to validate_presence_of :head }
  it { expect(table).to validate_presence_of :body }
end
