class CreateSessions < ActiveRecord::Migration
  def self.up
    create_table :sessions do |t|
      t.string :title
      t.integer :day_id
      t.string :starttime
      t.string :endtime
      t.integer :speaker_id
      t.integer :abstract_id
      t.integer :room_id
      t.integer :conference_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sessions
  end
end
