class CreateGroupmaps < ActiveRecord::Migration
  def self.up
  	drop_table :groupmaps
    create_table :groupmaps do |t|
      t.integer :group_id
      t.integer :speaker_id

      t.timestamps
    end
  end

  def self.down
    drop_table :groupmaps
  end
end
