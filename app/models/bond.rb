# frozen_string_literal: true

# bond model
class Bond < ApplicationRecord
  validates :description, presence: true
  belongs_to :background
end
