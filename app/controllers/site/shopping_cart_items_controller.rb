class Site::ShoppingCartItemsController < ApplicationController
  def create
    if params[:class] == 'Collection'
      @item = Collection.friendly.find(params[:item_id])
    elsif params[:class] == 'Product'
      @item = Product.friendly.find(params[:item_id])
    end

    @shopping_cart.add(@item, @item.price)
    redirect_to site_shopping_cart_url
  end
  
  def update
    @item = ShoppingCartItem.find(params[:id])

    @item.update(quantity: params[:quantity])
    redirect_back fallback_location: root_path
  end

  def destroy
    ShoppingCartItem.destroy(params[:id])
    redirect_back fallback_location: root_path
  end
end
