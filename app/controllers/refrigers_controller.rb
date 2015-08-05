class RefrigersController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

#index
  def index
    if current_user
      @refrigers = current_user.refrigers
    else
      redirect_to user_session_path
    end
  end

#new
  def new
    @refriger = Refriger.new
  end

#create
  def create
    @refriger = current_user.refrigers.create(refriger_params)

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
    def set_post
      @refriger = Refriger.find(params[:id])
    end

    def refriger_params
      params.require(:refriger).permit(:person, :location)
    end
end
