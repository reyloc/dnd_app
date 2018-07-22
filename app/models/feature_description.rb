# frozen_string_literal: true

# feature description model
class FeatureDescription < ApplicationRecord
  validates :description, presence: true
  belongs_to :feature
end
