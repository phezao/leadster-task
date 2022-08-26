class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :zipcode
      t.string :street
      t.string :city
      t.string :state
      t.string :neighborhood
      t.string :street_number

      t.timestamps
    end
  end
end
