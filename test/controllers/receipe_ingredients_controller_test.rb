require 'test_helper'

class ReceipeIngredientsControllerTest < ActionController::TestCase
  setup do
    @receipe_ingredient = receipe_ingredients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receipe_ingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receipe_ingredient" do
    assert_difference('ReceipeIngredient.count') do
      post :create, receipe_ingredient: { ingredient_id: @receipe_ingredient.ingredient_id, receipe_id: @receipe_ingredient.receipe_id, string: @receipe_ingredient.string }
    end

    assert_redirected_to receipe_ingredient_path(assigns(:receipe_ingredient))
  end

  test "should show receipe_ingredient" do
    get :show, id: @receipe_ingredient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receipe_ingredient
    assert_response :success
  end

  test "should update receipe_ingredient" do
    patch :update, id: @receipe_ingredient, receipe_ingredient: { ingredient_id: @receipe_ingredient.ingredient_id, receipe_id: @receipe_ingredient.receipe_id, string: @receipe_ingredient.string }
    assert_redirected_to receipe_ingredient_path(assigns(:receipe_ingredient))
  end

  test "should destroy receipe_ingredient" do
    assert_difference('ReceipeIngredient.count', -1) do
      delete :destroy, id: @receipe_ingredient
    end

    assert_redirected_to receipe_ingredients_path
  end
end
