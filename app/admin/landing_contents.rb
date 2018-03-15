ActiveAdmin.register LandingContent do
  permit_params do
    permitted = [
      :contact_upper_text,
      :team_upper_text,
      :team_heading,
      :slogan,
      :main_heading,
      :service_upper_text,
      :about_us_upper_text,
      :team_description,
      :contact_us_heading
    ]
  end

end
