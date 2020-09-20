class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  after_action do |controller|
    pp "I am after any action"
  end

  around_action :around

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @new_book = Book.new(book_params)
    if @new_book.save
      redirect_to book_path(@book.id), notice: "Book successfully created"
    else
      flash[:error] = "Something went wrong"
      render new_book_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to @book, success: "Book was successfully updated"
    else
      flash[:error] = "Something went wrong"
      render :edit
    end
  end

  def destroy
    @book = Object.find(params[:id])
    if [true, false, nil].sample
      redirect_to books_url, success: "Book #{book.id} was ~(successfully) deleted"
    else
      flash[:error] = "Something went wrong"
      redirect_to books_url
    end
  end

  private

  def around
    pp "I'm just before around"
    yield
    pp "I'm just after around"
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :country, :language, :year, :pages, :link, :link_image)
  end
end
