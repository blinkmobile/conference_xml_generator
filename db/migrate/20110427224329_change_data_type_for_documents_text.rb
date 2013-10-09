class ChangeDataTypeForDocumentsText < ActiveRecord::Migration
  def self.up
    remove_column :documents, :conference_id
  end

  def self.down
    remove_column :documents, :conference_id
  end
end
