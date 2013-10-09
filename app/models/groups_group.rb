class GroupsGroup < ActiveRecord::Base
    belongs_to :group
    belongs_to :session
end