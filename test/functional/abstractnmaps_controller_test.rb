require 'test_helper'

class AbstractnmapsControllerTest < ActionController::TestCase
  setup do
    @abstractnmap = abstractnmaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abstractnmaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abstractnmap" do
    assert_difference('Abstractnmap.count') do
      post :create, :abstractnmap => @abstractnmap.attributes
    end

    assert_redirected_to abstractnmap_path(assigns(:abstractnmap))
  end

  test "should show abstractnmap" do
    get :show, :id => @abstractnmap.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @abstractnmap.to_param
    assert_response :success
  end

  test "should update abstractnmap" do
    put :update, :id => @abstractnmap.to_param, :abstractnmap => @abstractnmap.attributes
    assert_redirected_to abstractnmap_path(assigns(:abstractnmap))
  end

  test "should destroy abstractnmap" do
    assert_difference('Abstractnmap.count', -1) do
      delete :destroy, :id => @abstractnmap.to_param
    end

    assert_redirected_to abstractnmaps_path
  end
end
