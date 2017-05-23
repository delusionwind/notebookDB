class OsystemsController < ApplicationController
  def index
    @osystems = Osystem.all
  end

  def show
    @osystem = Osystem.find(params[:id])
  end

  def new
    @osystem = Osystem.new
  end

  def create
    @osystem = Osystem.new(osystem_params)

    if(@osystem.save)
      redirect_to @osystem
    else
      render 'new'
    end
  end

  def edit
    @osystem = Osystem.find(params[:id])
  end

  def update
    @osystem = Osystem.find(params[:id])

    if(@osystem.update(osystem_params))
      redirect_to @osystem
    else
      render 'edit'
    end
  end

  private def osystem_params
    params.require(:osystem).permit(:ostype, :osver)
  end
end
