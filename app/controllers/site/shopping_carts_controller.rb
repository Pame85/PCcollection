class Site::ShoppingCartsController < ApplicationController
  def show; end

  def destroy
    @shopping_cart.clear
    redirect_to site_shopping_cart_url
  end
end
