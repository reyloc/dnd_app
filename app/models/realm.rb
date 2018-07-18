# frozen_string_literal: true

# realm model
class Realm < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :user

  def public?
    is_public
  end
end
