class BookingPolicy < ApplicationPolicy
  def show?
    booking.user_id == user.id
  end

  def new?
    true
  end

  def create?
    true
  end

  def destroy?
    booking.user_id == user.id
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
