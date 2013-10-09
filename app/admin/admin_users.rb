ActiveAdmin.register AdminUser do
  
  index do
    if current_admin_user.level == "Admin"
      column :email
      column :current_sign_in_at
      column :sign_in_count
      column :level
      default_actions
    else
      div do
        "You are not authorised to use this feature"
      end
    end
  end
  
  form do |f|
    if current_admin_user.level == "Admin"
      f.inputs "Admin Details" do
        f.input :email
        f.input :level, :collection => { "User" => "User", "Admin" => "Admin" }
      end
      f.buttons
    else
      div do
        "You are not authorised to use this feature"
      end
    end
  end
end
