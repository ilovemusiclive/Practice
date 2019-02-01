class CarsController < ApplicationController

before_action :find_car,only:[:show, :edit, :update, :destroy]

  def index
    @cars = Car.all.order("Created_at DESC")
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path
    else
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def find_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:name)
  end

end
