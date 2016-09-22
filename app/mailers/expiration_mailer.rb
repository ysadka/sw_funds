class ExpirationMailer < ActionMailer::Base
	default from: 'expiration@travelfunds.us'
 
  def expiration_email(user, trip)
  	@user = user
    @trip = trip
    @url  = 'https://www.southwest.com/'
    mail(to: @user.email, subject: 'Your funds are expiring soon')
  end
end