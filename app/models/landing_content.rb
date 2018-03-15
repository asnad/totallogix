class LandingContent < ApplicationRecord
  validates :contact_us_heading, :team_heading, :team_upper_text, :contact_upper_text, :slogan, :main_heading, :service_upper_text, :about_us_upper_text, presence: true
end
