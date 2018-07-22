# frozen_string_literal: true

# race controller
class RacesController < ApplicationController
  before_action :set_race, only: %w[show edit update destroy]

  def index
    @races = Race.where(is_public: true)
  end

  def show; end

  def new
    @race = Race.new
  end

  def edit; end

  def create; end

  def update; end

  def destroy; end

  private

  def set_race
    @race = Race.find(params[:id])
  end

  def race_params
    params.fetch(:race, {})
  end
end
