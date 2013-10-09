class GroupEnd < ActiveRecord::Migration
  def self.up
  	add_column :groups, :endtime, :string
  end

  def self.down
  	remove_column :groups, :endtime
  end
end
