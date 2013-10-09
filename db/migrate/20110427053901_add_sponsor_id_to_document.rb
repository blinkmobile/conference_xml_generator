class AddSponsorIdToDocument < ActiveRecord::Migration
  def self.up
    add_column :documents, :sponsor_id, :integer
  end

  def self.down
    remove_column :documents, :sponsor_id
  end
end
