class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(url: params[:url],
                       monster_id: params[:monster_id])

    if @image.save
      redirect_to "/monsters/#{@image.monster_id}"
    else
      render 'new.html.erb'
    end
  end

  def destroy
    @image = Image.find(params[:id])
    flash[:warning] = "Image removed."
    @image.destroy

    redirect_to '/monsters'
  end
end
