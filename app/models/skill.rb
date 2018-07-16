# frozen_string_literal: true

# skill model
class Skill < ApplicationRecord
  belongs_to :ability
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  def public?
    is_public
  end
end
