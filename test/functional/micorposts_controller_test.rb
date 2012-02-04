require 'test_helper'

class MicorpostsControllerTest < ActionController::TestCase
  setup do
    @micorpost = micorposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micorposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micorpost" do
    assert_difference('Micorpost.count') do
      post :create, micorpost: @micorpost.attributes
    end

    assert_redirected_to micorpost_path(assigns(:micorpost))
  end

  test "should show micorpost" do
    get :show, id: @micorpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micorpost
    assert_response :success
  end

  test "should update micorpost" do
    put :update, id: @micorpost, micorpost: @micorpost.attributes
    assert_redirected_to micorpost_path(assigns(:micorpost))
  end

  test "should destroy micorpost" do
    assert_difference('Micorpost.count', -1) do
      delete :destroy, id: @micorpost
    end

    assert_redirected_to micorposts_path
  end
end
