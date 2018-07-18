# frozen_string_literal: true

# realm description model
class RealmDescription < ApplicationRecord
  validates :description, presence: true
  belongs_to :realm
end
