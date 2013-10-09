class SessionsSponsors < ActiveRecord::Migration
  def self.up
    create_table :sessions_sponsors, :id => false do |t|
      t.integer :session_id
      t.integer :sponsor_id
    end
  end

  def self.down
    drop_table :sessions_sponsors
  end
end