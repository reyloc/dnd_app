# frozen_string_literal: true

# skill model
class Skill < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  belongs_to :ability
  belongs_to :user
  has_many :background_skill_proficiencies
end
