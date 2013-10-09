class Speakerlevel < ActiveRecord::Migration
  def self.up
	add_column :speakers, :level, :string
  end

  def self.down
    remove_column :speakers, :level
  end
end
