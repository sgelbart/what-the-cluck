require 'test_helper'

class HatchesControllerTest < ActionController::TestCase
  setup do
    @hatch = hatches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hatches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hatch" do
    assert_difference('Hatch.count') do
      post :create, hatch: { chicken_amount: @hatch.chicken_amount, description: @hatch.description, hatched_at: @hatch.hatched_at, hatchery_id: @hatch.hatchery_id, name: @hatch.name }
    end

    assert_redirected_to hatch_path(assigns(:hatch))
  end

  test "should show hatch" do
    get :show, id: @hatch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hatch
    assert_response :success
  end

  test "should update hatch" do
    patch :update, id: @hatch, hatch: { chicken_amount: @hatch.chicken_amount, description: @hatch.description, hatched_at: @hatch.hatched_at, hatchery_id: @hatch.hatchery_id, name: @hatch.name }
    assert_redirected_to hatch_path(assigns(:hatch))
  end

  test "should destroy hatch" do
    assert_difference('Hatch.count', -1) do
      delete :destroy, id: @hatch
    end

    assert_redirected_to hatches_path
  end
end
