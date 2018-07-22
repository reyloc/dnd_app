# frozen_string_literal: true

# background model
class Background < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :suggested_characteristics, presence: true
  belongs_to :feature
  belongs_to :image, optional: true
  belongs_to :user

  def public?
    is_public
  end
end
