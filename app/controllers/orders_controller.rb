class OrdersController < ApplicationController
  def create
    @order = Order.new(user_id: current_user.id,
                       subtotal: params[:subtotal])
 

    @order.calculate_tax
    @order.calculate_total
    @order.save
    @order.update_carted_products
    
    redirect_to "/orders/#{@order.id}"
    flash[:success] = 'Order placed!'
  end

  def show
    @order = Order.find(params[:id])
    @user = @order.user
  end
end
