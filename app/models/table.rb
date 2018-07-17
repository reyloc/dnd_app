# frozen_string_literal: false

# table model
class Table < ApplicationRecord
  validates :caption, presence: true
  validates :head, presence: true
  validates :body, presence: true
end
