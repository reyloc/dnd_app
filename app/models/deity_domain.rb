# frozen_string_literal: true

# deity domain model
class DeityDomain < ApplicationRecord
  belongs_to :deity
  belongs_to :domain
end
