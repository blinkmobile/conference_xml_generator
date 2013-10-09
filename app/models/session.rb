class Session < ActiveRecord::Base
    belongs_to :conference
    has_and_belongs_to_many :speakers
    belongs_to :room
    belongs_to :day
    belongs_to :abstract
    has_many :groupings
    has_and_belongs_to_many :sponsors
    accepts_nested_attributes_for :speakers, :room, :day, :abstract, :sponsors, :allow_destroy => true
end
