# frozen_string_literal: true

# feature model
class Feature < ApplicationRecord
  validates :name, presence: true
  belongs_to :table, optional: true
  belongs_to :user

  def public?
    is_public
  end
end
