class CategoriesController < ApplicationController
  protect_from_forgery :except => [:update, :delete, :create]
    
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
    respond_with @categories
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @category = Category.find(params[:id])
    respond_with @category
  end

  # GET /categories/new
  def new
    @category = Category.new
    respond_with @category
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
    respond_with @category
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)
    @category.save
    respond_with @category
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    @category.update(category_params)
    respond_with @category
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    respond_with @category
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :description, :score, :image_id)
    end
end
