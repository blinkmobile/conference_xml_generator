class Longertext < ActiveRecord::Migration
  def self.up
  	change_column :sessions, :subtitle, :text
  	change_column :sponsors, :information, :text
  end

  def self.down
  end
end
