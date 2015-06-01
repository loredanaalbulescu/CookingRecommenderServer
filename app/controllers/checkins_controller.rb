class CheckinsController < ApplicationController
  protect_from_forgery :except => [:update, :delete, :create]
    
  before_action :set_checkin, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /checkins
  # GET /checkins.json
  def index
    @checkins = Checkin.all
    respond_with @checkins
  end

  def show_by_user_id
    @checkins = Checkin.find_by_user_id(params[:user_id])
    @all = @checkins.show_by_user_id({:user_id => params[:user_id]})
    respond_with @all
  end

  def show_by_category_id
    @checkins = Checkin.find_by_category_id(params[:category_id])
    @all = @checkins.show_by_category_id({:category_id => params[:category_id]})
    respond_with @all
  end

  # GET /checkins/1
  # GET /checkins/1.json
  def show
    @checkin = Checkin.find(params[:id])
    respond_with @checkin
  end

  # GET /checkins/new
  def new
    @checkin = Checkin.new
    respond_with @checkin
  end

  # GET /checkins/1/edit
  def edit
    @checkin = Checkin.find(params[:id])  
    respond_with @checkin
  end

  # POST /checkins
  # POST /checkins.json
  def create
    @checkin = Checkin.new(checkin_params)
    @checkin.save
    @user = User.find_by_fb_id(@checkin.user_id)
    @category = Category.find_by_id(@checkin.category_id)
    @user.update_attributes(:score => (@user.score + @category.score))
    respond_with @checkin
  end

  # PATCH/PUT /checkins/1
  # PATCH/PUT /checkins/1.json
  def update
    @checkin.update(checkin_params)
    respond_with @checkin
  end

  # DELETE /checkins/1
  # DELETE /checkins/1.json
  def destroy
    @checkin.destroy
    respond_with @checkin
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkin
      @checkin = Checkin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checkin_params
      params.require(:checkin).permit(:description, :date_time, :picture, :user_id, :category_id)
    end
end
