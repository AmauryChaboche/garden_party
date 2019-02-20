class BookingPolicy < ApplicationPolicy

  def index?
    true
  end

  def show?
    record.user_id == user.id
  end

  def new?
    true
  end

  def create?
    true
  end

  def destroy?
    record.user_id == user.id
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
