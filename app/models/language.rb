# frozen_string_literal: true

# language model
class Language < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :description, :selector, :source_file, :file_format, :font_size,
            presence: true

  def public?
    is_public
  end
end
