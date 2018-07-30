# frozen_string_literal: true

# size model
class Size < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :user
end
