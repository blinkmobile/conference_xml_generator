class Group < ActiveRecord::Base
    belongs_to :conference
    has_many :groups_group
    has_and_belongs_to_many :subgroups, :class_name => "Group", :foreign_key => "group_id", :association_foreign_key => "subgroup_id"
    has_many :sessions, :through => :groups_group
    has_many :groupmaps
    belongs_to :day
    has_many :speakers, :through => :groupmaps
    accepts_nested_attributes_for :subgroups, :sessions, :groupmaps, :allow_destroy => true
end