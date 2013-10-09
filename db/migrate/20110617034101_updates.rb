class Updates < ActiveRecord::Migration
  def self.up
  	add_column :sessions, :subtitle, :string
  	add_column :groups, :subtitle, :string
  	add_column :speakers, :title, :string
  	add_column :speakers, :company, :string
  	add_column :speakers, :location, :string
  	add_column :sponsors, :level, :string
  	add_column :sponsors, :information, :string
  end

  def self.down
  	remove_column :sessions, :subtitle
  	remove_column :groups, :subtitle
  	remove_column :speakers, :title
  	remove_column :speakers, :company
  	remove_column :speakers, :location
  	remove_column :sponsors, :level
  	remove_column :sponsors, :information
  end
end
