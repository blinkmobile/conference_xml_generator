class Day < ActiveRecord::Base
    belongs_to :conference
    has_many :sessions
    has_many :groups

    def to_s
    	"#{displayName}"
    end
end
