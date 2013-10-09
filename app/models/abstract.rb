class Abstract < ActiveRecord::Base
    belongs_to :conference
    has_and_belongs_to_many :speakers
    has_many :sessions
    accepts_nested_attributes_for :speakers, :allow_destroy => true
end