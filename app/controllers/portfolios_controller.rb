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
end
