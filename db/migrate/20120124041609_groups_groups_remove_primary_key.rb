class GroupsGroupsRemovePrimaryKey < ActiveRecord::Migration
  def self.up
    remove_column("groups_groups", "id")
  end

  def self.down
  end
end
