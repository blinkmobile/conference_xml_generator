class Groupmap < ActiveRecord::Base
  belongs_to :group
  belongs_to :speaker
end
