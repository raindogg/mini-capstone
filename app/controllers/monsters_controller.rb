class MonstersController < ApplicationController
  def index
    @page_title = "All of the monsters"
    @monsters = Monster.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discounted = params[:discount]
    search_term = params[:search_term]

    if search_term
      fuzzy_search_term = "%#{search_term}%"
      @monsters = @monsters.where("name ILIKE ? OR description ILIKE ?", fuzzy_search_term, fuzzy_search_term)
    end

    if discounted
      @monsters = @monsters.where('price <= ?', discounted)
    end

    if sort_attribute && sort_order
      @monsters = @monsters.order(sort_attribute => sort_order)
    elsif sort_attribute
      @monsters = @monsters.order(sort_attribute)
    end

  end

  def show
    @page_title = "Monster!"
    @monster = Monster.find(params[:id])
  end

  def random
    random_monster = Monster.all.sample

    redirect_to "/monsters/#{random_monster.id}"
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
                    danger_rating: params[:danger_rating],
                    in_stock: params[:in_stock])
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
