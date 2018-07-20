# frozen_string_literal: true

# tool model
class Tool < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :image, optional: true
  belongs_to :user

  def public?
    is_public
  end
end
