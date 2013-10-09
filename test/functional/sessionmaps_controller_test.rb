require 'test_helper'

class SessionmapsControllerTest < ActionController::TestCase
  setup do
    @sessionmap = sessionmaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sessionmaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sessionmap" do
    assert_difference('Sessionmap.count') do
      post :create, :sessionmap => @sessionmap.attributes
    end

    assert_redirected_to sessionmap_path(assigns(:sessionmap))
  end

  test "should show sessionmap" do
    get :show, :id => @sessionmap.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sessionmap.to_param
    assert_response :success
  end

  test "should update sessionmap" do
    put :update, :id => @sessionmap.to_param, :sessionmap => @sessionmap.attributes
    assert_redirected_to sessionmap_path(assigns(:sessionmap))
  end

  test "should destroy sessionmap" do
    assert_difference('Sessionmap.count', -1) do
      delete :destroy, :id => @sessionmap.to_param
    end

    assert_redirected_to sessionmaps_path
  end
end
