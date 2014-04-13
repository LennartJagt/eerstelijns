class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.date :date
      t.integer :practice_id

      t.timestamps
    end
  end
end
