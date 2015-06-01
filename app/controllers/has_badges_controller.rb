class HasBadgesController < ApplicationController
  protect_from_forgery :except => [:update, :delete, :create]

  before_action :set_has_badge, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /has_badges
  # GET /has_badges.json
  def index
    @has_badges = HasBadge.all
    respond_with @has_badges
  end

  def show_by_user_id
    @has_badges = HasBadge.find_by_user_id(params[:user_id])
    @all = @has_badges.show_by_user_id({:user_id => params[:user_id]})
    respond_with @all
  end

  def show_by_badge_id
    @has_badges = HasBadge.find_by_badge_id(params[:badge_id])
    @all = @has_badges.show_by_badge_id({:badge_id => params[:badge_id]})
    respond_with @all
  end

  # GET /has_badges/1
  # GET /has_badges/1.json
  def show
    @has_badge = HasBadge.find(params[:id])
    respond_with @has_badge
  end

  # GET /has_badges/new
  def new
    @has_badge = HasBadge.new
    respond_with @has_badge
  end

  # GET /has_badges/1/edit
  def edit
    @has_badge = HasBadge.find(params[:id])
    respond_with @has_badge
  end

  # POST /has_badges
  # POST /has_badges.json
  def create
    @has_badge = HasBadge.new(has_badge_params)
    @has_badge.save
    respond_with @has_badge
  end

  # PATCH/PUT /has_badges/1
  # PATCH/PUT /has_badges/1.json
  def update
    @has_badge = HasBadge.find(params[:id])
    @has_badge.update(has_badge_params)
    respond_with @has_badge
  end

  # DELETE /has_badges/1
  # DELETE /has_badges/1.json
  def destroy
    @has_badge = HasBadge.find(params[:id])
    @has_badge.destroy
    respond_with @has_badge
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_has_badge
      @has_badge = HasBadge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def has_badge_params
      params.require(:has_badge).permit(:user_id, :badge_id)
    end
end
