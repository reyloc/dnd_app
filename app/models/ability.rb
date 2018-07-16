# frozen_string_literal: true

# ability model
class Ability < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
