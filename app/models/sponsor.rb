class Sponsor < ActiveRecord::Base
    belongs_to :conference
    has_many :documents
    has_and_belongs_to_many :sessions
    accepts_nested_attributes_for :documents, :sessions, :allow_destroy => true
end
