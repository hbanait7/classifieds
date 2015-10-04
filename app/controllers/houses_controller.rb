class HousesController < ApplicationController

  before_filter :set_house, only: [:show, :edit, :update, :destroy]

  def index
    @houses = House.all
  end

  def show

  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    if @house.save
      flash[:notice] = 'Listing Has Been Created'
      redirect_to @house
    else
      flash.now[:alert] = 'Invalid Form'
      render 'new'
    end
  end

  def edit

  end

  def update
    if @house.updated_attributes(house_params)
      flash[:notice] = 'Listing Has Been Updated'
      redirect_to @house
    else
      flash.now[:alert] = 'Invalid Form'
      render 'edit'
    end
  end

  def destroy
    @house.destroy
    flash[:notice] = 'Listing Has Been Deleted'
    redirect_to root_path
  end


  private

  def set_house
    @house = House.find(params[:id])
  end

  def house_params
    params.require(:house).permit(:price, :bedrooms, :bathrooms, :sqfeet, :details)
  end

end