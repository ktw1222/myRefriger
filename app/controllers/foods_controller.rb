class FoodsController < ApplicationController
  #index
  def index
      @refriger = Refriger.find(params[:refriger_id])
      @foods = @refriger.foods.all
  end

  #show
  def show
        @refriger = Refriger.find(params[:refriger_id])
        @food = Food.find(params[:id])
  end

  #new
  def new
    @refriger = Refriger.find(params[:refriger_id])
    @food = Food.new
  end

  #create
  def create
    @refriger = Refriger.find(params[:refriger_id])
    @food = Food.create(food_params.merge(refriger: @refriger))

    redirect_to refriger_path(@refriger)

  end

  #edit
  def edit
    @refriger = Refriger.find(params[:refriger_id])
    @food = Food.find(params[:id])
  end

  #update
  def update
    @refriger = Refriger.find(params[:refriger_id])
    @food = Food.find(params[:id])
    @food.update(food_params.merge(refriger: @refriger))

    redirect_to refriger_foods_path(@refriger, @food)

  end

  #destroy
  def destroy
    @refriger = Refriger.find(params[:refriger_id])
    @food = Food.find(params[:id])
    @food.destroy

    redirect_to refriger_foods_path

  end

  private
    def food_params
      params.require(:food).permit(:name, :amount, :first_date, :expiration_date, :status)
    end
end
