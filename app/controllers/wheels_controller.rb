class WheelsController < ApplicationController
  def index
    @wheels = Array(0..100)
  end
end
