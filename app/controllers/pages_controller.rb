class PagesController < ApplicationController
  def bunnkatu
  end
  def blog
  end
  def contact
  end
  def create
    @blog_post = Page.new(blog_post_params)
    if @blog_post.save
      redirect_to @blog_post, notice: 'Blog post was successfully created.'
    else
      render :new
    end
  end
  
  def new
    @blog_post = Page.new
  end

  private

  def blog_post_params
    params.require(:page).permit(:title, :content, :photo) # もしフォームに他のフィールドがあれば適宜追加
  end
end