class ContactMailer < ApplicationMailer

	def contact
		mail(to: 'mailerthp2018@yopmail.com', subject:'Test mail thp 2018 bordel')
	end

end
