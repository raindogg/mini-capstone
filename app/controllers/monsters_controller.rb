class MonstersController < ApplicationController

  def index
    @page_title = "All of the monsters"
    @list_title = "All available monsters:"
    @monsters = Monster.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discounted = params[:discount]
    search_term = params[:search_term]
    category = params[:category]

    if category
      @monsters = Category.find_by(name: category).monsters
      @list_title = "All #{category}"
    end

    if search_term
      fuzzy_search_term = "%#{search_term}%"
      @monsters = @monsters.where("name ILIKE ? OR description ILIKE ?", fuzzy_search_term, fuzzy_search_term)
      @list_title = "All monsters matching #{search_term}"
    end

    if discounted
      @monsters = @monsters.where('price <= ?', discounted)
      @list_title = "All discounted monsters:"
    end

    if sort_attribute && sort_order
      @monsters = @monsters.order(sort_attribute => sort_order)
      @list_title = "All monsters by #{sort_attribute}, #{sort_order}"
    elsif sort_attribute
      @monsters = @monsters.order(sort_attribute)
      @list_title = "All monsters by #{sort_attribute}"
    end

  end

  def show
    @page_title = "Monster!"
    @monster = Monster.find(params[:id])
    @supplier = @monster.supplier
    @images = @monster.images
    @categories = @monster.categories
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
                              danger_rating: params[:danger],
                              supplier_id: params[:supplier][:supplier_id])

    flash[:success] = "#{@monster.name} has been submitted."

    Image.create(url: params[:image], monster_id: @monster.id) if params[:image]
    Image.create(url: params[:image_2], monster_id: @monster.id) if params[:image_2]

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
                    danger_rating: params[:danger_rating],
                    in_stock: params[:in_stock],
                    supplier_id: params[:supplier_id])
    flash[:success] = "#{@monster.name} has been updated."
    Image.create(url: params[:image], monster_id: @monster.id) if params[:image]
    Image.create(url: params[:image_2], monster_id: @monster.id) if params[:image_2]

    redirect_to "/monsters/#{@monster.id}"
  end

  def destroy
    @monster = Monster.find(params[:id])
    flash[:warning] = "#{@monster.name} is no more."

    @monster.destroy

    redirect_to '/monsters'
  end
end
