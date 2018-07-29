# frozen_string_literal: true

# ideal model
class Ideal < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :background
  has_many :ideal_alignments
  has_many :alignments, through: :ideal_alignments

end
