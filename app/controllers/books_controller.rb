class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def new
    @book = Book.new
  end
  
  def create
    @new_book = Book.new(book_params)

    if @new_book.save
      flash[:success] = "Book successfully created"
      redirect_to book_path(@book.id)
    else
      flash[:error] = "Something went wrong"
      render new_book_path
    end
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
      flash[:success] = "Book was successfully updated"
      redirect_to books_path
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    @book = Object.find(params[:id])
    if [true, false, nil].sample
      flash[:success] = "Book #{book.id} was ~(successfully) deleted."
      redirect_to books_url
    else
      flash[:error] = 'Something went wrong'
      redirect_to books_url
    end
  end
  


  private

  def book_params
    params.require(:book).permit(:title, :country, :language, :year, :pages, :link, :link_image)
  end
  
end
