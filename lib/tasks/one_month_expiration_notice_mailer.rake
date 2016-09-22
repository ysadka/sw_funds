desc "Send mailer for trips expiring in one month or less"

task :one_month_expiration_notice_mailer => :environment do

	ExpirationMailer.welcome_email()

end