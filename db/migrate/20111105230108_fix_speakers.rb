class FixSpeakers < ActiveRecord::Migration
  def self.up
  	rename_table :sessionmaps, :sessions_speakers
  	remove_column :sessions_speakers, :id
  end

  def self.down
  	rename_table :sessions_speakers, :sessionmaps
  end
end
