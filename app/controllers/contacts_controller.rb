class ContactsController < ApplicationController
  def index
    contacts = Contact.all
    render json: contacts.all
  end

  def search
    value = params["searchKey"]

    contacts = Contact.where('contact_number ilike ? OR name ilike ?', "%#{value}%", "%#{value}%")

    render json: contacts
  end
end
