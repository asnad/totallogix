class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, :all
    cannot [:create, :update, :destroy], Contact
    cannot [:create, :destroy], LandingContent
    cannot [:destroy], TeamMember
    cannot :disable, TeamMember, status: TeamMember.statuses[:deactive]
    cannot :enable, TeamMember, status: TeamMember.statuses[:active]
  end

end