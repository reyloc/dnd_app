# frozen_string_literal: true

# flaw model
class Flaw < ApplicationRecord
  validates :description, presence: true
  belongs_to :background
end
