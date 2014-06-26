class CarsController < ApplicationController
  def index
  end

  def new

  	@equips = Component.all.where(category:'equipment')

  	@interiors = Component.all.where(category:'interior')

  	@wheels = Component.all.where(category:'wheel')

  	@colors = Component.all.where(category:'color')

  end

  def summary
  end
end
