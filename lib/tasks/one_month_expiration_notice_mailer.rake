desc "Send mailer for trips expiring in one month or less"

task :one_month_expiration_notice_mailer => :environment do

	# find all trips with funds expiring
	# iterate over mailer
	ExpirationMailer.expiration_email(user,trip).deliver

end