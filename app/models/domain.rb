# frozen_string_literal: true

# domain model
class Domain < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  belongs_to :user
  has_many :deity_domains
  has_many :deities, through: :deity_domains
end
