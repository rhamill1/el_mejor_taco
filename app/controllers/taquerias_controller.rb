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

  def edit
    taqueria_id = params[:id]
    @taqueria = Taqueria.find_by_id(taqueria_id)
  end

  def update
    taqueria_id = params[:id]
    taqueria = Taqueria.find_by_id(taqueria_id)
    taqueria.update_attributes(taqueria_params)
    redirect_to taqueria_path(taqueria)
  end

  def destroy
    taqueria_id = params[:id]
    taqueria = Taqueria.find_by_id(taqueria_id)
    taqueria.destroy
    redirect_to taquerias_path
  end

  private

    def taqueria_params
      params.require(:taqueria).permit(:taqueria_name, :description, :title, :primary_img, :secondary_img, :location, :region_id)
    end

end
