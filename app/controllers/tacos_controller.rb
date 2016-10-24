class TacosController < ApplicationController

  def index
    @tacos = Taco.all
  end

  def new
    @taco = Taco.new
  end

  def create
    taco = Taco.new(taco_params)

    if taco.save
      redirect_to tacos_path
    end
  end

  def show
    taco_id = params[:id]
    @taco = Taco.find_by_id(taco_id)
  end

  private

    def taco_params
      params.require(:taco).permit(:title, :description, :image, :taqueria_id)
    end

end
