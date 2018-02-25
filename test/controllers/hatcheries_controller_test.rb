require 'test_helper'

class HatcheriesControllerTest < ActionController::TestCase
  setup do
    @hatchery = hatcheries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hatcheries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hatchery" do
    assert_difference('Hatchery.count') do
      post :create, hatchery: { name: @hatchery.name }
    end

    assert_redirected_to hatchery_path(assigns(:hatchery))
  end

  test "should show hatchery" do
    get :show, id: @hatchery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hatchery
    assert_response :success
  end

  test "should update hatchery" do
    patch :update, id: @hatchery, hatchery: { name: @hatchery.name }
    assert_redirected_to hatchery_path(assigns(:hatchery))
  end

  test "should destroy hatchery" do
    assert_difference('Hatchery.count', -1) do
      delete :destroy, id: @hatchery
    end

    assert_redirected_to hatcheries_path
  end
end
