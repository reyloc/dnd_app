# frozen_string_literal: true

# background language model
class BackgroundLanguage < ApplicationRecord
  belongs_to :background
  belongs_to :language
end
