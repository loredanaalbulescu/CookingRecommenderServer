class PlansController < ApplicationController
  protect_from_forgery :except => [:update, :delete, :create]
  before_action :set_plan, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  # GET /plans
  # GET /plans.json
  def index
    @plans = Plan.all
    respond_with @plans
  end

  def show_by_user_id
    @plans = Plan.find_by_user_id(params[:user_id])
    @all = @plans.show_by_user_id({:user_id => params[:user_id]})
    respond_with @all
  end

  # GET /plans/1
  # GET /plans/1.json
  def show
    @plan = Plan.find(params[:id])
    respond_with @plan
  end

  # GET /plans/new
  def new
    @plan = Plan.new
    respond_with @plan
  end

  # GET /plans/1/edit
  def edit
    @plan = Plan.find(params[:id])
    respond_with @plan
  end

  # POST /plans
  # POST /plans.json
  def create
    @plan = Plan.new(plan_params)
    @plan.save
    respond_with @plan
  end

  # PATCH/PUT /plans/1
  # PATCH/PUT /plans/1.json
  def update
    @plan.update(plan_params)
    respond_with @plan
  end

  # DELETE /plans/1
  # DELETE /plans/1.json
  def destroy
    @plan.destroy
    respond_with @plan
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan
      @plan = Plan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_params
      params.require(:plan).permit(:user_id, :name, :plan_details, :date_time)
    end
end
