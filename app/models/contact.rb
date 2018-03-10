class Contact < ApplicationRecord
  after_create :send_emails
  validates :name, :email, :phone, :message, presence: true
  private
  def send_emails
    NotificationMailer.contact_notification(self).deliver_now
  end
end
