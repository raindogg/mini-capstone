class OrdersController < ApplicationController
  def create

    @order = Order.create(user_id: params[:user_id],
                          quantity: params[:quantity],
                          monster_id: params[:monster_id])

    redirect_to "/orders/#{@order.id}"
    flash[:success] = 'Order created!'
  end

  def show
    @order = Order.find(params[:id])
  end
end
