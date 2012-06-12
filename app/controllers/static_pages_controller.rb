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
    @problems = Problem.all
    @solutions = Solution.all
  end
end
