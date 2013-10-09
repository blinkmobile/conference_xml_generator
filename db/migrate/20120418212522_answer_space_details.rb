class AnswerSpaceDetails < ActiveRecord::Migration
  def self.up
    add_column :conferences, :domain, :string, :default => 'blinkev.co'
    add_column :conferences, :answerspace, :string
    add_column :conferences, :username, :string
    add_column :conferences, :password, :string
  end

  def self.down
    remove_column :conferences, :domain
    remove_column :conferences, :answerspace
    remove_column :conferences, :username
    remove_column :conferences, :password
  end
end
