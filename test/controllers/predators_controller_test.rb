require 'test_helper'

class PredatorsControllerTest < ActionController::TestCase
  setup do
    @predator = predators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:predators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create predator" do
    assert_difference('Predator.count') do
      post :create, predator: { name: @predator.name }
    end

    assert_redirected_to predator_path(assigns(:predator))
  end

  test "should show predator" do
    get :show, id: @predator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @predator
    assert_response :success
  end

  test "should update predator" do
    patch :update, id: @predator, predator: { name: @predator.name }
    assert_redirected_to predator_path(assigns(:predator))
  end

  test "should destroy predator" do
    assert_difference('Predator.count', -1) do
      delete :destroy, id: @predator
    end

    assert_redirected_to predators_path
  end
end
