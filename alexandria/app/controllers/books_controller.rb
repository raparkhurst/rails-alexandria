class BooksController < ApplicationController
  def index
    #@booksCompleteList = Book.getAllBooks
    @booksCurrentlyReading = Book.getCurrentlyReading
    #@booksFinishedReading = Book.getFinishedReading
  end

  def finishedReading
    @booksFinishedReading = Book.getFinishedReading
  end

  def currentlyReading
    @booksCurrentlyReading = Book.getCurrentlyReading
  end

  def allBooks
    @booksCompleteList = Book.getAllBooks
  end


  def show
    @book = Book.find(params[:id])
  end


  def edit
    @book = Book.find(params[:id])
  end


  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      #flash[:notice] = "Book Successfully updated!"
      redirect_to @book, notice: "Book successfully updated!"
    else
      render :edit
    end
  end


  def new
    @book = Book.new
  end


  def create
    @book = Book.new(book_params)
    if @book.save
      #flash[:notice] = "Book Successfully added!"
      #redirect_to @book
      redirect_to books_url, notice: "Book successfully added!"
    else
      render :new
    end

  end


  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to books_url, alert: "Book deleted!"
    else
      render :destroy
    end
  end



  private




  def book_params
    params.require(:book).
        permit(:name, :description, :chapter, :part_of_series, :date_start, :date_end, :paid)
  end

end
