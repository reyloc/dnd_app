# frozen_string_literal: true

# equipment model
class Equipment < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :equipment_type
  belongs_to :image, optional: true
  belongs_to :user
end
