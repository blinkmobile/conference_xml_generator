class Conference < ActiveRecord::Base
    has_many :days, :order => 'date'
    has_many :sessions, :order => 'day_id, starttime'
    has_many :groups, :order => 'day_id, starttime'
    has_many :speakers, :order => 'name'
    has_many :abstracts, :order => 'title'
    has_many :sponsors, :order => 'name'
    has_many :rooms, :order => 'name'
    has_many :downloads
    accepts_nested_attributes_for :days, :sessions, :groups, :speakers, :abstracts, :sponsors, :rooms, :downloads, :allow_destroy => true
end
