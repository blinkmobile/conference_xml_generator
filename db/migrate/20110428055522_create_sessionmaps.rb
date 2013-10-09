class CreateSessionmaps < ActiveRecord::Migration
  def self.up
    create_table :sessionmaps do |t|
      t.integer :session_id
      t.integer :speaker_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sessionmaps
  end
end
