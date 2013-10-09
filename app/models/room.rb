class Room < ActiveRecord::Base
    belongs_to :conference
    has_many :sessions
end
