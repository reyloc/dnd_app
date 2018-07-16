# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }
  it { expect(user).to validate_presence_of :username }
  it { expect(user).to validate_uniqueness_of :username }
  it { expect(user).to validate_presence_of :email }
  it { expect(user).to validate_uniqueness_of(:email).case_insensitive }
  it { expect(user).to validate_presence_of :full_name }
  it 'user should be an admin' do
    expect(user.admin?).to be true
  end
  it 'user should be a DM' do
    expect(user.dm?).to be true
  end
end
