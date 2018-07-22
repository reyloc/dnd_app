# frozen_string_literal: true

# ideal alignment model
class IdealAlignment < ApplicationRecord
  belongs_to :ideal
  belongs_to :alignment
end
