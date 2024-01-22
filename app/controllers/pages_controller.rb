class PagesController < ApplicationController
  def bunnkatu
  end
  def blog
    @page = Page.first
  end
  def contact
  end
  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to @page, notice: 'Page was successfully created.'
    else
      render :new
    end
  end

  private

  def page_params
    params.permit(:title, :content, :image)
  end
end