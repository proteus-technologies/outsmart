class StaticPagesController < ApplicationController
  def admin
    @problems = Problem.all
  end

  def home
  end
end
