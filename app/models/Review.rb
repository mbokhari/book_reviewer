class Review < ActiveRecord::Base
  belongs_to :book
  
  attr_accessible :name, :date, :body
  
  validates :name, :body, :presence  => true
  
  
end