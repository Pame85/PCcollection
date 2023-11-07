class Admin::VendorsController < AdminController
  before_action :set_vendor, only: %i[ show edit update destroy ]

  def index
    @vendors = Vendor.all
  end

  def show
  end

  def new
    @vendor = Vendor.new
  end

  def edit
  end

  def create
    @vendor = Vendor.new(vendor_params)

    if @vendor.save
      redirect_to admin_vendor_url(@vendor), notice: 'Vendor was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @vendor.update(vendor_params)
      redirect_to admin_vendor_url(@vendor), notice: 'Vendor was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @vendor.destroy
    redirect_to admin_vendors_url, notice: 'Vendor was successfully destroyed.'
  end

  private
    def set_vendor
      @vendor = Vendor.friendly.find(params[:id])
    end

    def vendor_params
      params.require(:vendor).permit(:industry_id, :name, :email, :phone, :address_line_1, :address_line_2, :town, :facebook, :instagram, :website)
    end
end
