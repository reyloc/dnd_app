# frozen_string_literal: true

# background skill proficiency model
class BackgroundSkillProficiency < ApplicationRecord
  belongs_to :background
  belongs_to :skill
end
