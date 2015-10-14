class HousesController < ApplicationController

  before_filter :set_house, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate, only: [:new, :create]

  def index
    @search = House.search(params[:q])
    @houses = @search.result
  end

  def show

  end

  def new
    @house = House.new
  end

  def create
    @house = current_user.houses.build(house_params)
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
    if @house.update_attributes(house_params)
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
    params.require(:house).permit(:price, :bedrooms, :bathrooms, :sqfeet, :details, :attachment)
  end


end
