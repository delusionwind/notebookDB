class DisksController < ApplicationController
  def index
    @disks = Disk.all
  end

  def show
    @disk = Disk.find(params[:id])
  end

  def new
    @disk = Disk.new
  end

  def create
    @disk = Disk.new(disk_params)

    if(@disk.save)
      redirect_to @disk
    else
      render 'new'
    end
  end

  def edit
    @disk = Disk.find(params[:id])
  end

  def update
    @disk = Disk.find(params[:id])

    if(@disk.update(disk_params))
      redirect_to @disk
    else
      render 'edit'
    end
  end

  private def disk_params
    params.require(:disk).permit(:dhdd, :dssd )
  end
end
