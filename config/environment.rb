# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
BookReviewer::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => "postmaster@book-reviewer.mailgun.org",
  :password => "05511phyewm0",
  :domain => "book-reviewer.mailgun.org",
  :address => "smtp.mailgun.org",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}