class UsersController < ApplicationController
  protect_from_forgery :except => [:update, :delete, :create]

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    respond_with @users
  end

  def show_by_fb_id
    @users = User.find_by_fb_id(params[:fb_id])
    @all = @users.show_by_user_id({:fb_id => params[:fb_id]})
    respond_with @all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    respond_with @user
  end

  # GET /users/new
  def new
    @user = User.new
    respond_with @user
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    respond_with @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @same_fb_id = User.find_by_fb_id(@user.fb_id)
    if @same_fb_id == nil
      @user.save
    end
    respond_with @user
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user.update(user_params)
    respond_with @user
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_with @user
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:fb_id, :first_name, :last_name, :score)
    end
end
