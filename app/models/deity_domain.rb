# frozen_string_literal: true
class DeityDomain < ApplicationRecord
  belongs_to :deity
  belongs_to :domain
end
