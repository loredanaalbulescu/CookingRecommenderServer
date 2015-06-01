class BadgesController < ApplicationController
  protect_from_forgery :except => [:update, :delete, :create]
    
  before_action :set_badge, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /badges
  # GET /badges.json
  def index
    @badges = Badge.all
    respond_with @badges
  end

  # GET /badges/1
  # GET /badges/1.json
  def show
    @badge = Badge.find(params[:id])
    respond_with @badge
  end

  # GET /badges/new
  def new
    @badge = Badge.new
    respond_with @badge
  end

  # GET /badges/1/edit
  def edit
    @badge = Badge.find(params[:id])
    respond_with @badge
  end

  # POST /badges
  # POST /badges.json
  def create
    @badge = Badge.new(badge_params)
    @badge.save
    respond_with @badge
  end

  # PATCH/PUT /badges/1
  # PATCH/PUT /badges/1.json
  def update
    @badge = Badge.find(params[:id])
    @badge.update(badge_params)
    respond_with @badge
  end

  # DELETE /badges/1
  # DELETE /badges/1.json
  def destroy
    @badge = Badge.find(params[:id])
    @badge.destroy
    respond_with @badge
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_badge
      @badge = Badge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def badge_params
      params.require(:badge).permit(:name, :description, :score, :picture)
    end
end
