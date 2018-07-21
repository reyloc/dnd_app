# frozen_string_literal: true

# trait model
class Trait < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :race
  belongs_to :table, optional: true
  belongs_to :user

  def public?
    is_public
  end
end