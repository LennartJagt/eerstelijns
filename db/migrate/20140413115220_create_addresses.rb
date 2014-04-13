class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string  :street
      t.integer :street_number
      t.string :zip_code
      t.string :town
      t.integer :practice_id

      t.timestamps
    end
  end
end
