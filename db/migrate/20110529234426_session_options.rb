class SessionOptions < ActiveRecord::Migration
  def self.up
    add_column :sessions, :rate, :boolean
    add_column :sessions, :livezone, :boolean
  end

  def self.down
  end
end
