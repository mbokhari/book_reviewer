# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
BookReviewer::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => 586,
  :address        => "book-reviewer.herokuapp.com",
  :user_name      => "Book Reviewer's Queen Bee",
  :password       => "admin",
  :domain         => "book-reviewer.herokuapp.com",
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp