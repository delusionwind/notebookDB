class SellsController < ApplicationController
  def index
    @sells = Sell.find_by_sql("SELECT * FROM sells")
    if (params[:order] == 'mode')
      @sells = Sell.find_by_sql("SELECT * FROM sells ORDER BY sells.price asc")
    end

  end

  def show
    @sell = Sell.find(params[:id])
  end

  def new
    @sell = Sell.new
  end

  def create
    @sell = Sell.new(sell_params)

    if(@sell.save)
      redirect_to @sell
    else
      render 'new'
    end
  end

  def edit
    @sell = Sell.find(params[:id])
  end

  def update
    @sell = Sell.find(params[:id])

    if(@sell.update(sell_params))
      redirect_to @sell
    else
      render 'edit'
    end
  end

  private def sell_params
    params.require(:sell).permit(:price, :model)
  end
end
