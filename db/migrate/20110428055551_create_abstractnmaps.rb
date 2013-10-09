class CreateAbstractnmaps < ActiveRecord::Migration
  def self.up
    create_table :abstractnmaps do |t|
      t.integer :abstract_id
      t.integer :speaker_id

      t.timestamps
    end
  end

  def self.down
    drop_table :abstractnmaps
  end
end
