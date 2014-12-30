require 'test_helper'

class UserhsControllerTest < ActionController::TestCase
  setup do
    @userh = userhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userh" do
    assert_difference('Userh.count') do
      post :create, userh: { email: @userh.email, fname: @userh.fname, lname: @userh.lname, qrhash: @userh.qrhash, url1: @userh.url1 }
    end

    assert_redirected_to userh_path(assigns(:userh))
  end

  test "should show userh" do
    get :show, id: @userh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userh
    assert_response :success
  end

  test "should update userh" do
    patch :update, id: @userh, userh: { email: @userh.email, fname: @userh.fname, lname: @userh.lname, qrhash: @userh.qrhash, url1: @userh.url1 }
    assert_redirected_to userh_path(assigns(:userh))
  end

  test "should destroy userh" do
    assert_difference('Userh.count', -1) do
      delete :destroy, id: @userh
    end

    assert_redirected_to userhs_path
  end
end
