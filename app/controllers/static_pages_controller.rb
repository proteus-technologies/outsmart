class StaticPagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:home]
  before_filter :require_admin, :except => [:home]

  # Only Admin should access this arena; if not admin,
  # redirect to the home page
  def require_admin
    if user_signed_in?
      unless current_user.is_admin?
       redirect_to root_path
      end
    end
  end

  def admin
    @problems = Problem.all
  end

  def home
    # Get the current problem to display on the home page
    @current_problem = Problem.last
    if user_signed_in?
      # Solutions that belong to the current logged in user
      @solutions = Solution.where(:user_ID => current_user.id)
      # Problems that the solutions of the current logged in user belong_to
      @problems = Problem.joins(:solutions)
    end
  end
end
