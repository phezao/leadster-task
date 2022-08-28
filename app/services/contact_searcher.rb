class ContactSearcher < ApplicationService
  def initialize(params, current_user)
    @collection = Contact.where(user: current_user)
    @params = params
  end

  def call
    @collection.where('fullname ILIKE ?', "%#{@params}%")
  end
end
