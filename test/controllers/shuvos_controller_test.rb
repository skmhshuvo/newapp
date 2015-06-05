require 'test_helper'

class ShuvosControllerTest < ActionController::TestCase
  setup do
    @shuvo = shuvos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shuvos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shuvo" do
    assert_difference('Shuvo.count') do
      post :create, shuvo: { description: @shuvo.description, no_followers: @shuvo.no_followers, title: @shuvo.title }
    end

    assert_redirected_to shuvo_path(assigns(:shuvo))
  end

  test "should show shuvo" do
    get :show, id: @shuvo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shuvo
    assert_response :success
  end

  test "should update shuvo" do
    patch :update, id: @shuvo, shuvo: { description: @shuvo.description, no_followers: @shuvo.no_followers, title: @shuvo.title }
    assert_redirected_to shuvo_path(assigns(:shuvo))
  end

  test "should destroy shuvo" do
    assert_difference('Shuvo.count', -1) do
      delete :destroy, id: @shuvo
    end

    assert_redirected_to shuvos_path
  end
end
