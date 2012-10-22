class BooksController < ApplicationController
  
  skip_before_filter :require_login, :only => [:index, :show]
  
  def index
    @books = Book.find(:all)
  end
  
  def new 
    @book = Book.new(params[:book])
  end
  
  def create
    @book = Book.new(params[:book])
    if !@book.save
      render 'new'
    else
      flash[:notice] = "New Book added to collection"
      redirect_to root_path
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
    if !@book.update_attributes(params[:book])
      render 'edit'
    else
      redirect_to book_path
    end 
  end
  
  def destroy
    @book = Book.find(params[:id])
    if !@book.destroy
      render show
    else
      flash[:notice] = "Book has been terminated"
      redirect_to root_path
    end 
  end
    

  
end
