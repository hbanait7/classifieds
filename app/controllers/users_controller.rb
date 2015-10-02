class UsersController < ApplicationController

  before_filter :set_user, only: [:edit, :update]


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      flash[:notice] = 'Signed Up'
      redirect_to @user
    else
      flash.now[:alert] = 'Invalid Form'
      render 'new'
    end
  end

  def edit

  end

  def update
    if @user.update_attributes(user_params)
      flash[:notice] = 'Profile Updated'
      redirect_to @user
    else
      flash.now[:alert] = 'Invalid Form'
      render 'edit'
    end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
