class PagesController < ApplicationController
  def bunnkatu
  end
  def contact
  end
  def works
    @pages = Page.all
  end
  
  def index
    @pages = Page.all
  end
  def new
    @page = Page.new
  end
  def show
    @page = Page.find(params[:id])
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
    params.require(:page).permit(:title, :content, :image)
  end

end