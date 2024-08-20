class VendorsSweetsController < ApplicationController
  def index
    @vendors_sweets = VendorsSweet.all
  end

  def show
    @vendors_sweet = VendorsSweet.find(params[:id])
  end

  def new
    @vendors_sweet = VendorsSweet.new
  end

  def create
    vendors_sweet = VendorsSweet.create
  end
end
