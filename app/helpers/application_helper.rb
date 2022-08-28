module ApplicationHelper
  include Pagy::Frontend

  def format_tax_id(tax_id)
    digits = tax_id.match(/(?'group1'\d{3})(?'group2'\d{3})(?'group3'\d{3})(?'group4'\d{2})/)
    "#{digits[:group1]}.#{digits[:group2]}.#{digits[:group3]}-#{digits[:group4]}"
  end
end
