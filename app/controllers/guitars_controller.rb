class GuitarsController < ApplicationController
  #before_action :authenticate_user, only: [:show, :edit, :update, :destroy]
  def index
    @guitars = Guitar.all 
  end

  def show
    @guitar = Guitar.find(params[:id])
  end

  def new
    @guitar = Guitar.new
  end

  def create
    @guitar = Guitar.new(guitar_params)
    if @guitar.save
      redirect_to @guitar
    end
  end

  def edit
    @guitar = Guitar.find(params[:id])
  end

  def update
    @guitar = Guitar.find(params[:id])
    @guitar.update
  end

  def destroy
    @guitar = Guitar.find(params[:id])
    if @guitar.destroy
      redirect_to guitars_path
    end
  end

  private
  def guitar_params
    params.require(:guitar).permit(:make, :guitar_model, :colour, :selling_price, :condition, :rack_no, :quantity, :image)
  end
end
