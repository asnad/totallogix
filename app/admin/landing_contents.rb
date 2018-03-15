ActiveAdmin.register LandingContent do
  permit_params do
    permitted = [:slogan, :main_heading, :service_upper_text, :about_us_upper_text]
  end

end
