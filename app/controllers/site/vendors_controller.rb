class Site::VendorsController < ApplicationController
  def index
    @vendors = Vendor.order(created_at: :desc)
  end

  def show
    @vendor = Vendor.friendly.find(params[:id])
  end
end
