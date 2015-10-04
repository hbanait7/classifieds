class BooksController < ApplicationController

  before_filter :set_book, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate, only: [:new, :create]

  def index
    @books = Book.all
  end

  def show

  end

  def new
    @book = Book.new
  end

  def create
    @book = current_user.books.build(book_params)
    if @book.save
      flash[:notice] = 'Book Has Been Created'
      redirect_to @book
    else
      flash.now[:alert] = 'Invalid Form'
      render 'new'
    end
  end

  def edit

  end

  def update
    if @book.update_attributes(book_params)
      flash[:notice] = 'Book Has Been Updated'
      redirect_to @book
    else
      flash.now[:alert] = 'Invalid Form'
      render 'edit'
    end
  end

  def destroy
    @book.destroy
    flash[:notice] = 'Book Has Been Deleted'
    redirect_to root_path
  end


  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:price, :author, :isbn, :details)
  end

end
