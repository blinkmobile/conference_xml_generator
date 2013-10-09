class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :title
      t.integer :day_id
      t.integer :starttime
      t.boolean :visible
      t.integer :conference_id

      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
