class Paragraphs < ActiveRecord::Migration
  def self.up
  	create_table :paragraphs do |t|
  		t.string :text
  	end
  end

  def self.down
  	remove_table :paragraphs
  end
end
