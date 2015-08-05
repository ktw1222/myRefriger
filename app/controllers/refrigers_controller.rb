class RefrigersController < ApplicationController

#index
  def index
    @refrigers = Refriger.all
  end

#new
  def new
    @refriger = Refriger.new
  end

#create
  def create
    @refriger = Refriger.create(refriger_params)

    redirect_to refriger_path(@refriger)
  end

#show
  def show
    @refriger = Refriger.find(params[:id])
    @food = @refriger.foods.all
  end

#edit
  def edit
    @refriger = Refriger.find(params[:id])
  end

#update
  def update
    @refriger = Refriger.find(params[:id])
    @refriger.update(refriger_params)

    redirect_to refriger_path(@refriger)
  end

#delete
  def destroy
    @refriger = Refriger.find(params[:id])
    @refriger.destroy

    redirect_to refrigers_path
  end

private
    def refriger_params
      params.require(:refriger).permit(:person, :location)
    end
end
