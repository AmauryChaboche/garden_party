class GardenPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    true
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
