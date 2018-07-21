# frozen_string_literal: true

# trait description model
class TraitDescription < ApplicationRecord
  validates :description, presence: true
  belongs_to :trait
end
