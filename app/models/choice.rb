# frozen_string_literal: true

# choice model
class Choice < ApplicationRecord
  belongs_to :equipment_choice
  has_many :choice_parts
end
