require 'test_helper'

class HatchChicksControllerTest < ActionController::TestCase
  setup do
    @hatch_chick = hatch_chicks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hatch_chicks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hatch_chick" do
    assert_difference('HatchChick.count') do
      post :create, hatch_chick: { breed_id: @hatch_chick.breed_id, hatch_id: @hatch_chick.hatch_id, sex: @hatch_chick.sex }
    end

    assert_redirected_to hatch_chick_path(assigns(:hatch_chick))
  end

  test "should show hatch_chick" do
    get :show, id: @hatch_chick
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hatch_chick
    assert_response :success
  end

  test "should update hatch_chick" do
    patch :update, id: @hatch_chick, hatch_chick: { breed_id: @hatch_chick.breed_id, hatch_id: @hatch_chick.hatch_id, sex: @hatch_chick.sex }
    assert_redirected_to hatch_chick_path(assigns(:hatch_chick))
  end

  test "should destroy hatch_chick" do
    assert_difference('HatchChick.count', -1) do
      delete :destroy, id: @hatch_chick
    end

    assert_redirected_to hatch_chicks_path
  end
end
