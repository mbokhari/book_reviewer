# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
BookReviewer::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => "app8245442@heroku.com",
  :password => "Your Password",
  :domain => "smtp.sendgrid.net",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :login,
  :enable_starttls_auto => true
}