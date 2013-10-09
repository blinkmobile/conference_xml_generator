class Images < ActiveRecord::Migration
  def self.up
  	add_column :sessions, :imageurl, :string
  	add_column :groups, :imageurl, :string
  end

  def self.down
  	remove_column :sessions, :imageurl
  	remove_column :groups, :imageurl
  end
end
