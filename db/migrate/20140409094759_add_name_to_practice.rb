class AddNameToPractice < ActiveRecord::Migration
  def change
    add_column :practices, :name, :string
  end
end
