# frozen_string_literal: true

# race model
class Race < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  belongs_to :size
  belongs_to :image, optional: true
  belongs_to :user

  def public?
    is_public
  end
end
