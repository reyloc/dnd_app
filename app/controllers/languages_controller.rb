# frozen_string_literal: true

# languages controller
class LanguagesController < ApplicationController
  before_action :set_language, only: %w[show edit update destroy]

  def index
    @languages = Language.where(is_public: true)
  end

  def show; end

  def new
    @language = Language.new
  end

  def edit; end

  def create; end

  def update; end

  def destroy; end

  private

  def set_language
    @language = Language.find(params[:id])
  end

  def language_params
    params.fetch(:language, {})
  end
end
