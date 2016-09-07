class MonstersController < ApplicationController
  def index
    @page_title = "All of the monsters"
    @monsters = Monster.all
  end

  def show
    @page_title = "Monster!"
    @monster = Monster.find(params[:id])
  end

  def new
    @page_title = "Add monster"
  end

  def create
    @page_title = "Added monster"
    @monster = Monster.create(name: params[:name], 
                              origin: params[:origin], 
                              price: params[:price], 
                              description: params[:description], 
                              image: params[:image],
                              danger_rating: params[:danger])
    flash[:success] = "#{@monster.name} has been submitted."
    redirect_to "/monsters/#{@monster.id}"
  end

  def edit 
    @monster = Monster.find(params[:id])
  end

  def update
    @monster = Monster.find(params[:id])
    @monster.update(name: params[:name],
                    origin: params[:origin],
                    price: params[:price],
                    description: params[:description],
                    image: params[:image],
                    danger_rating: params[:danger_rating])
    flash[:success] = "#{@monster.name} has been updated."
    redirect_to "/monsters/#{@monster.id}"
  end

  def destroy
    @monster = Monster.find(params[:id])
    flash[:warning] = "#{@monster.name} is no more."

    @monster.destroy

    redirect_to '/monsters'
  end
end
