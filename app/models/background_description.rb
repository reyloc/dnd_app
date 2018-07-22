# frozen_string_literal: true

# background description model
class BackgroundDescription < ApplicationRecord
  validates :description, presence: true
  belongs_to :background
end
