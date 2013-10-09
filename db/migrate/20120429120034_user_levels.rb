class UserLevels < ActiveRecord::Migration
  def self.up
    add_column :admin_users, :level, :string, :default => 'User'
  end

  def self.down
    remove_column :admin_users, :level
  end
end
