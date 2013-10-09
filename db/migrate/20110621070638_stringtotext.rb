class Stringtotext < ActiveRecord::Migration
  def self.up
  	change_column :sponsors, :information, :text
  end

  def self.down
  	change_column :sponsors, :information, :string
  end
end
