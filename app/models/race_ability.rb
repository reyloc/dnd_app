# frozen_string_literal: true

# race ability model
class RaceAbility < ApplicationRecord
  belongs_to :race
  belongs_to :ability
end
