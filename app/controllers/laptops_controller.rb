class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.find_by_sql("SELECT * FROM laptops")
    if (params[:order] == 'mode')
      @laptops = Laptop.find_by_sql("SELECT * FROM laptops ORDER BY laptops.lmodel asc")
    end
    
  end

  def show
    @laptop = Laptop.find(params[:id])
  end

  def new
    @laptop = Laptop.new
  end

  def create
    @laptop = Laptop.new(laptop_params)

    if(@laptop.save)
      redirect_to @laptop
    else
      render 'new'
    end
  end

  def edit
    @laptop = Laptop.find(params[:id])
  end

  def update
    @laptop = Laptop.find(params[:id])

    if(@laptop.update(laptop_params))
      redirect_to @laptop
    else
      render 'edit'
    end
  end

  private def laptop_params
    params.require(:laptop).permit(:lmodel)
  end
end
