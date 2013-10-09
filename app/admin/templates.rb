ActiveAdmin.register Template do
  index do
		if current_admin_user.level == "Admin"
		  column :name
  		default_actions
  	else
  	  column :name
  	  column :id do |id|
        link_to "Show", "/admin/templates/" + id.id.to_s
      end
  	end
	end
	
	show do
	  div :class => "panel" do
			h3 template.name
			div :class => "template attributes_table", :id => "attributes_table_template_" + template.id.to_s do
				table do
				  tr do
						td "Name"
						td template.name
					end
					tr do
						td "Created"
						td template.created_at
					end
					tr do
						td "Last Updated"
						td template.updated_at
					end
					tr do
						td "Content"
						td template.body
					end
				end
			end
		end
		active_admin_comments
	end
	
	form do |f|
	  if current_admin_user.level == "Admin"
  	  f.inputs
  	  f.buttons
  	else
      div do
        "You are not authorised to use this feature"
      end
    end
	end
end
