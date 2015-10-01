class ProductsController < ApplicationController

  before_filter :set_product, only: [:show, :edit, :update, :destroy]


  def index
    @products = Product.all
  end

  def show

  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = 'Product Created Successfully'
      redirect_to @product
    else
      flash.now[:alert] = 'Invalid Form'
      render 'new'
    end
  end

  def edit

  end

  def update
    if @product.update_attributes(product_params)
      flash[:notice] = 'Product Updated Successfully'
      redirect_to @product
    else
      flash.now[:alert] = 'Invalid Form'
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    flash[:notice] = 'Product Deleted Successfully'
    redirect_to root_path
  end


  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :category, :description)
  end

end
