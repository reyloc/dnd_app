# frozen_string_literal: true

# image model
class Image < ApplicationRecord
  validates :file, presence: true, uniqueness: true
  validates :author, presence: true
  validates :title, presence: true
  has_many :tools
end
