ActiveAdmin::Dashboards.build do
  section "Upcoming Events" do
    Conference.all.each do |conference|
      day = conference.days.first
      if day != nil and day.date and day.date > Date.today
        div do
          link_to(day.conference.name, admin_conference_path(day.conference))
        end
      end
    end
  end
  
  section "User Information" do
    div do
      div do
        current_admin_user.email
      end
      div do
        current_admin_user.level
      end
    end
  end
end
