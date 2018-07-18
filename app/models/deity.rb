# frozen_string_literal: true

# deity model
class Deity < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :symbol, presence: true
  validates :of, presence: true
  belongs_to :alignment
  belongs_to :realm
  belongs_to :image, optional: true
  belongs_to :user
  has_many :deity_domains

  def public?
    is_public
  end
end
