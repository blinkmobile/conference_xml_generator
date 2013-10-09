class Speaker < ActiveRecord::Base
    belongs_to :conference
    has_many :groupmaps
    has_and_belongs_to_many :sessions
end
