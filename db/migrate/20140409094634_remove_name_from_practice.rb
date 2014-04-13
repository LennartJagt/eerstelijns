class RemoveNameFromPractice < ActiveRecord::Migration
  def up
    remove_column :practices, :name
  end

  def down
    add_column :practices, :name, :integer
  end
end
