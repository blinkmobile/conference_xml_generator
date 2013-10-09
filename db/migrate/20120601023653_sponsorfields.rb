class Sponsorfields < ActiveRecord::Migration
  def self.up
    add_column :sponsors, :secondImage, :string
    add_column :sponsors, :contactName, :string
    add_column :sponsors, :contactNumber, :string
    add_column :sponsors, :contactEmail, :string
    add_column :sponsors, :contactAddress, :string
    add_column :sponsors, :linkedin, :string
    add_column :sponsors, :twitter, :string
    add_column :sponsors, :facebook, :string
    add_column :sessions, :twitter, :boolean
    add_column :sessions, :facebook, :boolean
    
  end

  def self.down
    remove_column :sponsors, :secondImage
    remove_column :sponsors, :contactName
    remove_column :sponsors, :contactNumber
    remove_column :sponsors, :contactEmail
    remove_column :sponsors, :contactAddress
    remove_column :sponsors, :linkedin
    remove_column :sponsors, :twitter
    remove_column :sponsors, :facebook
    remove_column :sessions, :twitter
    remove_column :sessions, :facebook
  end
end
