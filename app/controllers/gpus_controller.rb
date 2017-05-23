class GpusController < ApplicationController
  def index
    @gpus = Gpu.all
  end

  def show
    @gpu = Gpu.find(params[:id])
  end

  def new
    @gpu = Gpu.new
  end

  def create
    @gpu = Gpu.new(gpu_params)

    if(@gpu.save)
      redirect_to @gpu
    else
      render 'new'
    end
  end

  def edit
    @gpu = Gpu.find(params[:id])
  end

  def update
    @gpu = Gpu.find(params[:id])

    if(@gpu.update(gpu_params))
      redirect_to @gpu
    else
      render 'edit'
    end
  end

  private def gpu_params
    params.require(:gpu).permit(:cbrand, :cgen, :cram)
  end
end
