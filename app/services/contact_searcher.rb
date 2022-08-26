class ContactSearcher < ApplicationService
  def initialize(params)
    @params = params
  end

  def call
    Contact.where('fullname ILIKE ?', "%#{@params}%")
  end
end
