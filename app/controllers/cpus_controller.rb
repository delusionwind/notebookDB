class CpusController < ApplicationController
  def index
    @cpus = Cpu.all
  end

  def show
    @cpu = Cpu.find(params[:id])
  end

  def new
    @cpu = Cpu.new
  end

  def create
    @cpu = Cpu.new(cpu_params)

    if(@cpu.save)
      redirect_to @cpu
    else
      render 'new'
    end
  end

  def edit
    @cpu = Cpu.find(params[:id])
  end

  def update
    @cpu = Cpu.find(params[:id])

    if(@cpu.update(cpu_params))
      redirect_to @cpu
    else
      render 'edit'
    end
  end

  private def cpu_params
    params.require(:cpu).permit(:cbrand, :cgen, :cfreq)
  end
end
