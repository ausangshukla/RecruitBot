# frozen_string_literal: true

class Ability
    include CanCan::Ability
  
    def initialize(user)
  
      user ||= User.new # guest user
  
      if user.role == 'User'
        can :manage, User, id: user.id
        can :manage, Client, id: user.client_id
      elsif user.role == 'Admin'  # additional permissions for administrators
          can :manage, Client
          can :manage, User
      end
  
    end
  
  end
  