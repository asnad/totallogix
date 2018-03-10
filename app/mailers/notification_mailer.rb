class NotificationMailer < ApplicationMailer
  def contact_notification(contact)
    @contact = contact
    mail(to: ENV["EMAILS_TO_CONTACT"].split(","), subject: 'A new Message Received')
  end
end
