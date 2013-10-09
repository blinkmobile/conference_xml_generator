class Sessiondescription < ActiveRecord::Migration
  def self.up
    add_column :sessions, :description, :text
  end

  def self.down
    remove_column :sessions, :description
  end
end
