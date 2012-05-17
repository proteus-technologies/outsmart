class StaticPagesController < ApplicationController
  # before_filter :require_login, :except => [:home]
  # before_filter :require_admin, :except => [:home]

  # Require login to access this arena (flash won't show
  # due to being redirected)
  def require_login
    unless user_signed_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_path
    end
  end

  # Only Admin should access this arena
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
