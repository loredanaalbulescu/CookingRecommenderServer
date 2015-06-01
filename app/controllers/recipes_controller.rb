class RecipesController < ApplicationController
  protect_from_forgery :except => [:update, :delete, :create]
    
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
    respond_with @recipes
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @recipe = Recipe.find(params[:id])
    respond_with @recipe
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    respond_with @recipe
  end

  # GET /recipes/1/edit
  def edit
    @recipe = Recipe.find(params[:id])
    respond_with @recipe
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    respond_with @recipe
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update_attributes(params[:user])
    respond_with @recipe

  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    respond_with @recipe
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:name, :description, :message, :score, :category_id)
    end
end
