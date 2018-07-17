# frozen_string_literal: true

# tool model
class Tool < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true

  def public?
    is_public
  end
end
