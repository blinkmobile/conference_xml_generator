class CreateDownloads < ActiveRecord::Migration
  def self.up
    create_table :downloads do |t|
      t.string :name
      t.string :url
      t.string :group
      t.string :group
      t.string :subgroup
      t.string :icon
      t.integer :conference_id

      t.timestamps
    end
  end

  def self.down
    drop_table :downloads
  end
end
