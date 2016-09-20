class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create(user_id: current_user.id,
                                           monster_id: params[:monster_id],
                                           quantity: params[:quantity],
                                           status: 'carted')


    flash[:success] = "Added to cart."
    redirect_to '/checkout' 
  end

  def index
    @products = User.find(current_user.id).carted_products
    @carted = @products.where('status LIKE ?', 'carted')
    @subtotal = 0
    @carted.each do |item|
      @subtotal += item.monster.price * item.quantity 
    end

    if @carted.length == 0 
      redirect_to '/'
      flash[:warning] = "You need to buy some monsters before checking out!"
    end
  end

  def destroy
    @monster = CartedProduct.find(params[:product])
    @monster.update(status: 'removed')

    redirect_to '/checkout'
    flash[:success] = "Monster removed."
  end
end
