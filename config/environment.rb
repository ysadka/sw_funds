# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Use Sendgrid for email
ActionMailer::Base.smtp_settings = {
  :user_name => 'yaron',
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => 'travelfunds.us',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}