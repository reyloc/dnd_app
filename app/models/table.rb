# frozen_string_literal: true

# table model
class Table < ApplicationRecord
  validates :caption, presence: true
  validates :head, presence: true
  validates :body, presence: true
end
