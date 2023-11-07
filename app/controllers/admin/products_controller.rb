class Admin::ProductsController < AdminController
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to admin_product_url(@product), notice: 'Product was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      redirect_to admin_product_url(@product), notice: 'Product was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    redirect_to admin_products_url, notice: 'Product was successfully destroyed.'
  end

  private
    def set_product
      @product = Product.friendly.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:category_id, :vendor_id, :sku, :name, :description, :quantity, :price, :available)
    end
end
