ActiveAdmin.register Conference do
	index do
		column :id
		column :name
		default_actions
	end
	show do
		div :class => "panel" do
			h3 conference.name
			div :class => "conference attributes_table", :id => "attributes_table_conference_" + conference.id.to_s do
				table do
					tr do
						th "Id"
						td conference.id
					end
					tr do
						th "Name"
						td conference.name
					end
					tr do
						th "Created At"
						td conference.created_at
					end
					tr do
						th "Updated At"
						td conference.updated_at
					end
					tr do
						th "Options:"
						td a link_to "Days", admin_conference_days_path(conference)
					end
					tr do
						td
						td a link_to "Sessions", admin_conference_sessions_path(conference)
					end
					tr do
						td
						td a link_to "Session Groupings", admin_conference_groups_path(conference)
					end
					tr do
						td
						td a link_to "Speakers", admin_conference_speakers_path(conference)
					end
					tr do
						td
						td a link_to "Abstracts", admin_conference_abstracts_path(conference)
					end
					tr do
						td
						td a link_to "Sponsors", admin_conference_sponsors_path(conference)
					end
					tr do
						td
						td a link_to "Rooms", admin_conference_rooms_path(conference)
					end
					tr do
						td
						td a link_to "Downloads", admin_conference_downloads_path(conference)
					end
					tr do
						td
						td a link_to "answerSpace Data", "/conference/" + conference.id.to_s + "/suitcase.xml"
					end
					tr do
						td
						#td a link_to "answerSpace magic", "/conference/" + conference.id.to_s
					end
				end
      		end
      	end
      	active_admin_comments
    end
end

ActiveAdmin.register Day do
	belongs_to :conference
	
	index do
		column :id
		column :displayName
		default_actions
	end
end

ActiveAdmin.register Session do
	belongs_to :conference
	
	index do
		column :id
		column :order
		column :day
		column :starttime
		column :title
		default_actions
	end
	
	form :partial => "sessionForm"
end

ActiveAdmin.register Group do
	belongs_to :conference
	
	index do
		column :id
		column :day
		column :starttime
		column :title
		default_actions
	end
	
	form :partial => "groupForm"
end

ActiveAdmin.register Speaker do
	belongs_to :conference
	
	index do
		column :id
		column :level
		column :name
		default_actions
	end
end

ActiveAdmin.register Abstract do
	belongs_to :conference
	
	index do
		column :id
		column :title
		default_actions
	end
end

ActiveAdmin.register Sponsor do
	belongs_to :conference
	
	index do
		column :id
		column :level
		column :name
		default_actions
	end
	
	form do |f|
		f.inputs
		
		f.inputs "Documents" do
			f.has_many :documents do |j|
				j.input :title
				j.input :url
				j.buttons
			end
		end
		
		f.buttons
	end
end

ActiveAdmin.register Room do
	belongs_to :conference
	
	index do
		column :id
		column :name
		default_actions
	end
end

ActiveAdmin.register Download do
	belongs_to :conference
	
	index do
		column :id
		column :group
		column :subgroup
		column :name
		default_actions
	end
end
