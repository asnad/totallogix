class ContactsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    contact = Contact.new(contact_params)
    contact.save
  end
  private
  def contact_params
    params.require(:contact).permit(:name, :phone, :email, :message)
  end
end