class RemoveAnimalIdFromActivities < ActiveRecord::Migration
  def up
    remove_column :activities, :animal_id
  end

  def down
    add_column :activities, :animal_id, :integer
  end
end
