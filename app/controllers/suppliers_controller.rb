class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def show
    @supplier = Supplier.find(params[:id])
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to @supplier
    end

  end

  def edit
        @supplier = Supplier.find(params[:id])
  end

  def update
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    if @supplier.destroy
      redirect_to suppliers_path
    end
  end

  def supplier_params
    params.require(:supplier).permit(:guitar_name, :supplier_name, :supplier_address, :purchased_date, :delivery_date, :quantity, :price)
  end
end
