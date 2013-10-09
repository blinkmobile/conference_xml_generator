class Sponsordetails < ActiveRecord::Migration
  def self.up
    add_column :sponsors, :url, :string
    add_column :sponsors, :booth, :string
  end

  def self.down
    remove_column :sponsors, :url
    remove_column :sponsors, :booth
  end
end
