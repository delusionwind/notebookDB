class DisplaysController < ApplicationController
  def index
    @displays = Display.all
  end

  def show
    @display = Display.find(params[:id])
  end

  def new
    @display = Display.new
  end

  def create
    @display = Display.new(displaying_params)

    if(@display.save)
      redirect_to @display
    else
      render 'new'
    end
  end

  def edit
    @display = Display.find(params[:id])
  end

  def update
    @display = Display.find(params[:id])

    if(@display.update(displaying_params))
      redirect_to @display
    else
      render 'edit'
    end
  end
  
  private def displaying_params
    params.require(:display).permit(:size, :dtype, :dtouch)
  end
end
