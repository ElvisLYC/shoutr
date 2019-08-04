class Timeline < ApplicationRecord
  def initialize(users, scope = Shout)
    @users = users
    @scope = scope
  end

  def shouts
    scope.where(user_id: users).order(created_at: :desc)
  end

  def to_partial_path
    "timeline/timeline"
  end
  private

  attr_reader :users, :scope
end
