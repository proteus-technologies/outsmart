class StaticPagesController < ApplicationController
  # before_filter :require_admin, :except => [:home]
  # before_filter :authenticate_user!, :except => [:home]

  # Only Admin should access this arena; if not admin,
  # redirect to the home page
  def require_admin
    unless current_user.is_admin?
      redirect_to root_path
    end
  end

  def admin
    @problems = Problem.all
  end

  def home
    @problems = Problem.all
  end
end
