# frozen_string_literal: true

# background model
class Background < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :suggested_characteristics, presence: true
  belongs_to :feature
  belongs_to :image, optional: true
  belongs_to :user
  has_many :background_descriptions
  has_many :personality_traits
  has_many :ideals
  has_many :bonds
  has_many :flaws
  has_many :background_skill_proficiencies
  has_many :skills, through: :background_skill_proficiencies
  has_many :background_tool_proficiencies
  has_many :tools, through: :background_tool_proficiencies

  def public?
    is_public
  end
end
