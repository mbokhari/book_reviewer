class ReviewsController < ApplicationController
  def index
    @book = Book.find(params[:book_id])
    @reviews = Review.find(:all)
  end
  
  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end
  
  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.create!(params[:review])
    redirect_to book_path(@book)
  end
  
  def show
    @book = Book.find(params[:book_id])
    @review = Review.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:book_id])
    @review = Review.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:book_id])
    @review = Review.find(params[:id])
    @review.update_attributes(params[:review])
  end
  
  def destroy
    @book = Book.find(params[:book_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to book_path(@book)
  end
  
  
end