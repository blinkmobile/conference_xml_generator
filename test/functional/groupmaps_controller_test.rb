require 'test_helper'

class GroupmapsControllerTest < ActionController::TestCase
  setup do
    @groupmap = groupmaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groupmaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groupmap" do
    assert_difference('Groupmap.count') do
      post :create, :groupmap => @groupmap.attributes
    end

    assert_redirected_to groupmap_path(assigns(:groupmap))
  end

  test "should show groupmap" do
    get :show, :id => @groupmap.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @groupmap.to_param
    assert_response :success
  end

  test "should update groupmap" do
    put :update, :id => @groupmap.to_param, :groupmap => @groupmap.attributes
    assert_redirected_to groupmap_path(assigns(:groupmap))
  end

  test "should destroy groupmap" do
    assert_difference('Groupmap.count', -1) do
      delete :destroy, :id => @groupmap.to_param
    end

    assert_redirected_to groupmaps_path
  end
end
