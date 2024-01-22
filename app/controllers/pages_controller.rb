class PagesController < ApplicationController
  def bunnkatu
  end
  def blog
    @page = Page.first
  end
  def contact
  end

  def show
    @page = Page.find(params[:id])
  end


  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to @page, notice: 'Blog post was successfully created.'
    else
      render :new
    end
  end

  private

  def page_params
    params.require(:page).permit(:title, :content, :image)
  end
end