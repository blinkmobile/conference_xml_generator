class Sessiontypes < ActiveRecord::Migration
  def self.up
    add_column :sessions, :keynote, :boolean
    add_column :sessions, :break, :boolean
  end

  def self.down
    remove_column :sessions, :keynote
    remove_column :sessions, :break
  end
end
