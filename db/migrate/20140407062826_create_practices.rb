class CreatePractices < ActiveRecord::Migration
  def self.up
    create_table :practices do |t|
      t.integer :name
      t.timestamps
    end
  end

  def self.down
    drop_table :practices
  end
end
