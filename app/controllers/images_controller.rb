class ImagesController < ApplicationController
  def create
    @image = Image.create(url: params[:url],
                          monster_id: params[:monster_id])
    redirect_to "/monsters/#{@image.monster_id}"
  end

  def destroy
    @image = Image.find(params[:id])
    flash[:warning] = "Image removed."
    @image.destroy

    redirect_to '/monsters'
  end
end
