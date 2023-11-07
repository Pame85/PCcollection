class Site::ProductsController < ApplicationController
  def index
    @products = Product.order(created_at: :desc)
  end

  def show
    @product = Product.friendly.find(params[:id])
  end
end
