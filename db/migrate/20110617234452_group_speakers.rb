class GroupSpeakers < ActiveRecord::Migration
  def self.up
  	create_table :groupmaps do |t|
  		t.integer :group_id
  		t.integer :speaker_id
  	end
  end

  def self.down
  	remove_table :groupmaps
  end
end
