class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.integer :visit_id
      t.string :name
      t.string :specie

      t.timestamps
    end
  end
end
