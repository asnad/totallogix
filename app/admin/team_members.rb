ActiveAdmin.register TeamMember do
  permit_params do
    permitted = [:name, :position, :description, :facebook_profile, :linkedin_profile, :twitter_profile, :status, :sort_order]
  end

  index do
    column :name
    column :position
    column :facebook_profile
    column :linkedin_profile
    column :twitter_profile
    column :status
    column :sort_order
    column :created_at
    column :updated_at
    actions do |member|
      item 'Disable', deactivate_admin_team_member_path(member), class: 'member_link', method: 'put' if member.active?
      item 'Enable', activate_admin_team_member_path(member), class: 'member_link', method: 'put' if member.deactive?
    end
  end
  form do |f|
    f.inputs do
      f.input :name, input_html:{disabled: !f.object.new_record?}
      f.input :position
      f.input :facebook_profile
      f.input :linkedin_profile
      f.input :twitter_profile
      f.input :status
      f.input :sort_order, input_html:{disabled: !f.object.new_record?}
    end
    f.actions
  end
  member_action :deactivate, method: :put do
    if resource.update_attributes(status: TeamMember.statuses[:deactive])
      redirect_to admin_team_members_path, notice: 'Member has been deactivated successfull!'
    else
      redirect_to admin_team_members_path, alert: resource.errors.full_messages.first
    end
  end
  member_action :activate, method: :put do
    if resource.update_attributes(status: TeamMember.statuses[:active])
      redirect_to admin_team_members_path, notice: 'Member has been activated successfull!'
    else
      redirect_to admin_team_members_path, alert: resource.errors.full_messages.first
    end
  end
end
