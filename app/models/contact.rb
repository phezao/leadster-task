class Contact < ApplicationRecord
  belongs_to :user
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true

  validates :fullname, :birthdate, :email, presence: true
  validates :tax_id, presence: true, uniqueness: true
  def birthdate_br
    I18n.l(birthdate) unless birthdate.blank?
  end
end
