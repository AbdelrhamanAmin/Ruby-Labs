class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      can:manage, Article, user_id: user.id 
    end
  end
end
