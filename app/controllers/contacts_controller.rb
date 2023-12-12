class ContactsController < ApplicationController
  def index
    contacts = Contact.all
    render json: contacts.all
  end

  def search
    value = params["searchKey"]

    combinations = ContactsHelper.get_combinations(value)

    contacts = Contact.where("contact_number ILIKE '%#{value}%' OR name ILIKE '%#{value}%'" + combinations.map { |comb| " OR name ILIKE '%#{comb}%'" }.join(' '))
    render json: contacts
  end
end
