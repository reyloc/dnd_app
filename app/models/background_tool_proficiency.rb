# frozen_string_literal: true

# background tool proficiency model
class BackgroundToolProficiency < ApplicationRecord
  belongs_to :background
  belongs_to :tool
end
