# frozen_string_literal: true

# race language model
class RaceLanguage < ApplicationRecord
  belongs_to :race
  belongs_to :language
end
