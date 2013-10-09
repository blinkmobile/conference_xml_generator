class GroupsGroups < ActiveRecord::Migration
  def self.up
    rename_table :groupings, :groups_groups
  end

  def self.down
    rename_table :groups_groups, :groupings
  end
end
