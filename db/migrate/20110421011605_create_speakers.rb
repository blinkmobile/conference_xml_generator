class CreateSpeakers < ActiveRecord::Migration
  def self.up
    create_table :speakers do |t|
      t.string :name
      t.string :bio
      t.string :imageurl
      t.integer :conference_id

      t.timestamps
    end
  end

  def self.down
    drop_table :speakers
  end
end
