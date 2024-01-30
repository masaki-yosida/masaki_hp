class PortfoliosController < ApplicationController
  def change
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end
  
  def index
    @portfolios = Portfolio.all
  end
  
  def show
    @portfolio = Portfolio.find(params[:id])
  end
  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      redirect_to pages_path
    else
      render :new
    end
  end

  def update
    @portfolio = Portfolio.find(params[:id])

    if @portfolio.update(portfolio_params)
      redirect_to @portfolio, notice: '投稿が更新されました'
    else
      render :edit
    end
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy
  
    redirect_to pages_path, notice: 'Page was successfully destroyed.'
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :content, :image)
  end
end


