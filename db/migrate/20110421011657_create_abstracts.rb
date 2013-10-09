class CreateAbstracts < ActiveRecord::Migration
  def self.up
    create_table :abstracts do |t|
      t.string :title
      t.integer :speaker_id
      t.string :text
      t.integer :conference_id

      t.timestamps
    end
  end

  def self.down
    drop_table :abstracts
  end
end
