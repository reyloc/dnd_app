# frozen_string_literal: true

# choice part model
class ChoicePart < ApplicationRecord
  belongs_to :choice
  belongs_to :equipment
end
