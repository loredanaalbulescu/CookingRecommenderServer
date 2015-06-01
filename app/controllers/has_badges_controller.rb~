class HasBadgesController < ApplicationController
  before_action :set_has_badge, only: [:show, :edit, :update, :destroy]

  # GET /has_badges
  # GET /has_badges.json
  def index
    @has_badges = HasBadge.all
  end

  # GET /has_badges/1
  # GET /has_badges/1.json
  def show
  end

  # GET /has_badges/new
  def new
    @has_badge = HasBadge.new
  end

  # GET /has_badges/1/edit
  def edit
  end

  # POST /has_badges
  # POST /has_badges.json
  def create
    @has_badge = HasBadge.new(has_badge_params)

    respond_to do |format|
      if @has_badge.save
        format.html { redirect_to @has_badge, notice: 'Has badge was successfully created.' }
        format.json { render :show, status: :created, location: @has_badge }
      else
        format.html { render :new }
        format.json { render json: @has_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /has_badges/1
  # PATCH/PUT /has_badges/1.json
  def update
    respond_to do |format|
      if @has_badge.update(has_badge_params)
        format.html { redirect_to @has_badge, notice: 'Has badge was successfully updated.' }
        format.json { render :show, status: :ok, location: @has_badge }
      else
        format.html { render :edit }
        format.json { render json: @has_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /has_badges/1
  # DELETE /has_badges/1.json
  def destroy
    @has_badge.destroy
    respond_to do |format|
      format.html { redirect_to has_badges_url, notice: 'Has badge was successfully destroyed.' }
      format.json { head :no_content }
    end
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
