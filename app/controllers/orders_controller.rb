class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :set_order, only: [:show, :edit, :destroy]

  def index
    @orders = Order.all
  end

  def new
    if @cart.product_items.empty?
      redirect_to all_products_url, notice: 'Your cart is Empty'
      return
    end
    @order = Order.new
    @client_token = Braintree::ClientToken.generate
    
end
def create
  @order = Order.new(order_params)
@order.add_product_items_from_cart(@cart)
    if @order.save
        Cart.destroy(session[:cart_id])
      session[:cart_id] = nil
      redirect_to all_products_url, notice: 'Thank you for your Order'
    else
      render :new, notice: 'Please check your form'
    end
end
def show
end

def destroy
  @order.destroy
    redirect_to all_products_url, notice: 'Order deleted'
end
private
def set_order
@order = Order.find(params[:id])
end
def order_params
params.require(:order).permit(:name, :email, :address, :city, :province, :country)
end

end
