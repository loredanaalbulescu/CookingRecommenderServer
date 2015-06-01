require 'test_helper'

class HasBadgesControllerTest < ActionController::TestCase
  setup do
    @has_badge = has_badges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:has_badges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create has_badge" do
    assert_difference('HasBadge.count') do
      post :create, has_badge: { badge_id: @has_badge.badge_id, user_id: @has_badge.user_id }
    end

    assert_redirected_to has_badge_path(assigns(:has_badge))
  end

  test "should show has_badge" do
    get :show, id: @has_badge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @has_badge
    assert_response :success
  end

  test "should update has_badge" do
    patch :update, id: @has_badge, has_badge: { badge_id: @has_badge.badge_id, user_id: @has_badge.user_id }
    assert_redirected_to has_badge_path(assigns(:has_badge))
  end

  test "should destroy has_badge" do
    assert_difference('HasBadge.count', -1) do
      delete :destroy, id: @has_badge
    end

    assert_redirected_to has_badges_path
  end
end
