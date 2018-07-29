# frozen_string_literal: true

# background class
class BackgroundsController < ApplicationController
  before_action :set_bg, only: %w[show]

  def index
    @backgrounds = Background.where(is_public: true).order(:name)
  end

  def show; end

  private

  def set_bg
    @background = Background.find(params[:id])
  end
end
