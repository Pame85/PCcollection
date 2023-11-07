class Admin::OrdersController < AdminController
  before_action :set_order, only: %i[ show edit update ]

  def index
    @orders = Order.all
  end

  def show
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to admin_order_url(@order), notice: 'Order was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @order.destroy
    redirect_to admin_orders_url, notice: 'Orders was successfully destroyed.'
  end

  private
    def set_order
      @order = Order.friendly.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:reference, :name, :phone, :email, :address_line_1, :address_line_2, :town, :postcode, :subtotal, :shipping_cost, :total, :paid, :status)
    end
end
