class CartedProductsController < ApplicationController
  before_action :authenticate_user!
  def create
    @carted_product = CartedProduct.create(user_id: current_user.id,
                                           monster_id: params[:monster_id],
                                           quantity: params[:quantity],
                                           status: 'carted')

    flash[:success] = "Added to cart."
    redirect_to '/carted_products' 
  end

  def index
    # @products = User.find(current_user.id).carted_products
    # @carted = @products.where('status LIKE ?', 'carted') => what I had
    @carted = current_user.currently_carted

    if current_user && @carted.length.zero? 
      redirect_to '/'
      flash[:warning] = "You need to buy some monsters before checking out!"
    end
  end

  def destroy
    @monster = CartedProduct.find(params[:id])
    @monster.update(status: 'removed')

    redirect_to '/carted_products'
    flash[:success] = "Monster removed."
  end
end
