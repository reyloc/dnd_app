# frozen_string_literal: true

# personality trait model
class PersonalityTrait < ApplicationRecord
  validates :description, presence: true
  belongs_to :background
end
