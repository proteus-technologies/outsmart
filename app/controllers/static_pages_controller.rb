class StaticPagesController < ApplicationController
  def admin
    @problems = Problem.all
  end

  def home
  @problems = Problem.last
  end
end
