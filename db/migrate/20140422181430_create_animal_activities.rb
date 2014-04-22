class CreateAnimalActivities < ActiveRecord::Migration
  def change
    create_table :animal_activities do |t|
      t.integer :animal_id
      t.integer :activity_id
      t.datetime :created_at

      t.timestamps
    end
  end
end
