# frozen_string_literal: true

# domain model
class Domain < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  belongs_to :user

  def public?
    is_public
  end
end
