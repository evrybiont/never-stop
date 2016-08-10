class WheelsController < ApplicationController
  def index
    @wheels = Wheel.all
  end
end
