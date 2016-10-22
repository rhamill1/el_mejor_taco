class TaqueriasController < ApplicationController

  def index
    @taquerias = Taqueria.all
  end

  def new
    @taqueria = Taqueria.new
  end

  def create
    taqueria = Taqueria.new(taqueria_params)

    if taqueria.save
      redirect_to taquerias_path
    end
  end

  def show
    taqueria_id = params[:id]
    @taqueria = Taqueria.find_by_id(taqueria_id)
  end

  private

    def taqueria_params
      params.require(:taqueria).permit(:taqueria_name, :description, :title, :primary_img, :secondary_img, :location, :region_id)
    end

end
