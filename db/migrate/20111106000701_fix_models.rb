class FixModels < ActiveRecord::Migration
  def self.up
  	rename_table :abstractnmaps, :speakers_abstracts
  	remove_column :speakers_abstracts, :id

#  	drop_table :speaker_maps
  end

  def self.down
  	rename_table :sessions_abstracts, :abstractnmaps

  	rename_table :speakers_abstracts, :speaker_maps
  end
end
