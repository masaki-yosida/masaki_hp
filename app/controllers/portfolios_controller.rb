class PortfoliosController < ApplicationController
  def change
    # change アクションの処理を追加
  end

  def new
    @portfolio = Portfolio.new
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end
  def iti
    @portfolio = Portfolio.all
  end
  def show
  end
  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      redirect_to portfolios_path, notice: 'Portfolio was successfully created.'
    else
      render :new
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :content, :image)
  end
end


