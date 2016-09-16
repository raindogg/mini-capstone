class OrdersController < ApplicationController
  def create
    monster = Monster.find(params[:monster_id])

    @order = Order.new(user_id: current_user.id,
                       quantity: params[:quantity].to_i,
                       monster_id: params[:monster_id])
  
    @order.calculate_subtotal(monster)
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
