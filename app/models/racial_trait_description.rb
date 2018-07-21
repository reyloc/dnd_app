# frozen_string_literal: true

# racial trait description model
class RacialTraitDescription < ApplicationRecord
  validates :description, presence: true
  belongs_to :racial_trait
end
