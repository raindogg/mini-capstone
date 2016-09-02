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
    p "**********************************************"
  end

  def create
    @page_title = "Added monster"
    @monster = Monster.create(name: params[:name], 
                              origin: params[:origin], 
                              price: params[:price], 
                              description: params[:description], 
                              image: params[:image],
                              danger_rating: params[:danger])
    render 'show.html.erb'
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
    render 'show.html.erb'
  end
end
