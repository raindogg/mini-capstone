class SuppliersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @suppliers = Supplier.all
  end

  def create
    @supplier = Supplier.create(name: params[:name],
                                email: params[:email],
                                phone: params[:phone])
    flash[:success] = "#{@supplier.name} has been submitted."
    redirect_to "/suppliers/#{@supplier.id}"
  end

  def show
    @supplier = Supplier.find(params[:id])
    @monsters = @supplier.monsters.all
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    @supplier = Supplier.update(name: params[:name],
                                email: params[:email],
                                phone: params[:phone])
  end

  def destroy
    @supplier = supplier.find(params[:id])
    flash[:warning] = "#{@supplier.name} is no more."

    @supplier.destroy

    redirect_to '/suppliers'
  end
end
