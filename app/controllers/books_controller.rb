class BooksController < ApplicationController

  def index
    @books=Book.all
  end

  def new
    @book=Book.new()
  end

  def create
    book = Book.new(list_params)
    book.save
    redirect_to '/'
  end

  def edit
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def list_params
    params.require(:book).permit(:title, :body)
  end

end
