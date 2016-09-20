class OrdersController < ApplicationController
  def create

    @order = Order.new(user_id: current_user.id,
                       subtotal: params[:subtotal])
  
    @order.calculate_tax
    @order.calculate_total
    @order.save

    redirect_to "/orders/#{@order.id}"
    flash[:success] = 'Order placed!'
  end

  def show
    @order = Order.find(params[:id])
    @user = @order.user
    @monster = @order.monster
  end
end
