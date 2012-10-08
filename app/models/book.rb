class Book < ActiveRecord::Base
  attr_accessible :title, :author, :no_of_pages, :isbn
  
  validates :title, :author, :no_of_pages, :presence  => true
 
  has_many :reviews, :dependent  => :destroy
  
end