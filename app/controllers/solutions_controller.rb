class SolutionsController < ApplicationController
  # before_filter :require_login
  # before_filter :require_admin, :except => [:new, :create]

  # Require login to access the Solutions arena (flash won't show
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

  # GET /solutions
  # GET /solutions.json
  def index
    @solutions = Solution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @solutions }
    end
  end

  # GET /solutions/1
  # GET /solutions/1.json
  def show
    @solution = Solution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @solution }
    end
  end

  # GET /solutions/new
  # GET /solutions/new.json
  def new
    @solution = Solution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @solution }
    end
  end

  # GET /solutions/1/edit
  def edit
    @solution = Solution.find(params[:id])
  end

  # POST /solutions
  # POST /solutions.json
  def create
    @solution = Solution.new(params[:solution])

    respond_to do |format|
      if @solution.save
        format.html { redirect_to @solution, notice: 'Solution was successfully created.' }
        format.json { render json: @solution, status: :created, location: @solution }
      else
        format.html { render action: "new" }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /solutions/1
  # PUT /solutions/1.json
  def update
    @solution = Solution.find(params[:id])

    respond_to do |format|
      if @solution.update_attributes(params[:solution])
        format.html { redirect_to @solution, notice: 'Solution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solutions/1
  # DELETE /solutions/1.json
  def destroy
    @solution = Solution.find(params[:id])
    @solution.destroy

    respond_to do |format|
      format.html { redirect_to solutions_url }
      format.json { head :no_content }
    end
  end
end
