class ChangeStuff < ActiveRecord::Migration
  def self.up
  change_column :rooms, :description, :text
  change_column :speakers, :bio, :text
  add_column :days, :date, :date
  end

  def self.down
  change_column :rooms, :description, :text
  change_column :speakers, :bio, :text
  add_column :days, :date, :date
  end
end
