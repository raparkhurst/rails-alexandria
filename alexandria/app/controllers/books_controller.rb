class BooksController < ApplicationController
  def index
    @books = Book.order('id')
  end


  def show
    @book = Book.find(params[:id])
  end


  def edit
    @book = Book.find(params[:id])
  end


  def update
    @book = Book.find(params[:id])
    book_params = params.require(:book).permit(:name, :description, :chapter, :part_of_series, :date_start, :date_end, :paid)
    @book.update(book_params)
    redirect_to @book
  end

end
