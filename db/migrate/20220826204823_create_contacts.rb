class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :fullname
      t.string :tax_id
      t.date :birthdate

      t.timestamps
    end
  end
end
