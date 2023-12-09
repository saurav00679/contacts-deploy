class ContactsController < ApplicationController
  def index
  end

  def search
    value = params["searchKey"]

    contacts = Contact.where('contact_number like ? or name like ?', "#{value}%", "#{value}%")
    render json: contacts
  end
end
