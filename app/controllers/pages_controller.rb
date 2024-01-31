class PagesController < ApplicationController
  

  def branch
  end

  def contact
  end

  def change
    @pages = Page.all
  end

  def works
    @pages = Page.all
  end
  def show
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
  
    redirect_to pages_path, notice: 'Page was successfully destroyed.'
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
      redirect_to pages_path, notice: 'Blog post was successfully created.'
    else
      render :new
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    if @page.update(page_params)
      redirect_to @page, notice: '投稿が更新されました'
    else
      render :edit
    end
  end



  private
  def page_params
    params.require(:page).permit(:title, :content, :image)
  end

end