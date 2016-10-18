class PassengerMailer < ApplicationMailer

	def thank_you_email(user, booking, flight)
		@user = user
		@booking = booking
		@flight = flight
		mail(to: @user.email, subject: "Thank you for your ticket purchase")
	end
end
