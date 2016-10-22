class RegionsController < ApplicationController

  def index
    @regions = Region.all
  end

  def new
    @region = Region.new
  end

  def create
    region = Region.new(region_params)

    if region.save
      redirect_to regions_path
    end
  end

  def show
    region_id = params[:id]
    @region = Region.find_by_id(region_id)
  end

  private

    def region_params
      params.require(:region).permit(:region_name)
    end


end
