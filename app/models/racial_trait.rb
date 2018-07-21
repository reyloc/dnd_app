# frozen_string_literal: true

# racial trait model
class RacialTrait < ApplicationRecord
  validates :name, presence: true
  belongs_to :race
  belongs_to :table, optional: true
  has_many :racial_trait_descriptions
end
