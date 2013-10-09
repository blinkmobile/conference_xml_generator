class Sessionorder < ActiveRecord::Migration
  def self.up
    add_column :sessions, :order, :integer
  end

  def self.down
    remove_column :sessions, :order
  end
end
