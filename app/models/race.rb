# frozen_string_literal: true

# race model
class Race < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  belongs_to :size
  belongs_to :image, optional: true
  belongs_to :user
  has_many :race_abilities
  has_many :race_languages
  has_many :traits
  has_many :racial_traits
  has_many :languages, through: :race_languages

  def public?
    is_public
  end
end
