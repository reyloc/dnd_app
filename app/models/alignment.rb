# frozen_string_literal: true

# alignment model
class Alignment < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  belongs_to :user
end
