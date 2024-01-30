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
  end
  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      redirect_to pages_path
    else
      render :new
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :content, :image)
  end
end


