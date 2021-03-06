class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @carted_products = current_user.currently_carted
    @order = Order.create(user_id: current_user.id)

    @carted_products.update_all(order_id: @order.id, status: 'purchased')

    @order.calculate_totals
    
    session[:cart_count] = nil
    redirect_to "/orders/#{@order.id}"
    flash[:success] = 'Order placed!'
  end

  def show

    @order = Order.find(params[:id])
    @user = @order.user
    redirect_to '/' if @order.user_id != current_user.id
  end
end
