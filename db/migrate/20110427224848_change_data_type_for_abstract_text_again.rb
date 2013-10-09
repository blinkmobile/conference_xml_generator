class ChangeDataTypeForAbstractTextAgain < ActiveRecord::Migration
  def self.up
    change_column :abstracts, :text, :text
  end

  def self.down
    change_column :abstracts, :text, :text
  end
end
