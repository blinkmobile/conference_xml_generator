class GroupTime < ActiveRecord::Migration
  def self.up
    change_column :groups, :starttime, :string
  end

  def self.down
    change_column :groups, :starttime, :string
  end
end
