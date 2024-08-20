class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

  def new
    @vendor = Vendor.new
    @vendor.sweets.build
  end

  def create
    vendor = Vendor.create(vendor_params)
    redirect_to vendor
  end

  private

  def vendor_params
    params.require(:vendor).permit(:name, sweet_ids:[], sweets_attributes: [:name])
  end
end
