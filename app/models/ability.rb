class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, :all
    cannot [:create, :update, :destroy], Contact
    cannot [:create, :destroy], LandingContent
    # cannot [:create, :destroy], Service
  end

end