class TeamMember < ApplicationRecord
  validates :name, :position, presence: true
  enum status: [:active, :deactive]
end
