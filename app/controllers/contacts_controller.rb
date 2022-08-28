class ContactsController < ApplicationController
  before_action :set_contact, only: %i[show edit update destroy]

  def index
    @pagy, @contacts = pagy(ContactSearcher.call(params[:fullname], current_user))
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def edit
    @contact.build_address if @contact.address.blank?
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to edit_contact_path(@contact), notice: "Contato criado com sucesso."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @contact.update(contact_params)
      redirect_to contact_path(@contact), notice: "Contato atualizado com sucesso."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @contact.destroy

    redirect_to contacts_url, notice: "Contato excluído com sucesso."
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(
      :fullname,
      :tax_id,
      :email,
      :birthdate,
      :user_id,
      address_attributes: %i[zipcode city state street street_number neighborhood id]
    )
  end
end
