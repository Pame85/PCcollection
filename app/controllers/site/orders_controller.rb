class Site::OrdersController < ApplicationController
  def show
    @order = Order.friendly.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      extract_items_from_cart

      @shopping_cart.clear
      redirect_to site_order_url(@order), notice: 'Order was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def order_params
      params.require(:order).permit(:reference, :name, :phone, :email, :address_line_1, :address_line_2, :town, :postcode, :subtotal, :shipping_cost, :total, :paid, :status)
    end

    def extract_items_from_cart
      @shopping_cart.shopping_cart_items.each do |item|
        @order.order_items.create(orderable_type: item.item.class, orderable_id: item.item_id, price: item.price, quantity: item.quantity, subtotal: item.subtotal)
      end
    end
end
