class WheelsController < ApplicationController
  def index
    @brands = Brand.pluck(:name, :id)
    @sides = Side.pluck(:name, :id)
    @wheels = Wheel.filter filtering_params
  end

  private

  def filtering_params
    params.slice :brand, :radius, :side, :width, :height
  end
end
