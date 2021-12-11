class HerbsController < ApplicationController
  def index
    @herbs = Herb.all
  end

  def show
    # find the herb's id from the Herb model
    @herb = Herb.find(params[:id])
  end

  def new
    @herb = Herb.new
  end

  def create
    # shows data being sent
    # render plain: params[:herb].inspect

    # creates new herb from params in Herb model
    @herb = Herb.new(herb_params)

    if(@herb.save)
      redirect_to @herb
    else
      render 'new'
    end
  end

  # defines params needed for create method
  private def herb_params
    params.require(:herb).permit(:name, :description)
  end
end
