# frozen_string_literal: true

# table model
class Table < ApplicationRecord
  validates :head, presence: true
  validates :body, presence: true
end
