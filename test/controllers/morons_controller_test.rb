require 'test_helper'

class MoronsControllerTest < ActionController::TestCase
  setup do
    @moron = morons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:morons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moron" do
    assert_difference('Moron.count') do
      post :create, moron: { description: @moron.description, imgur: @moron.imgur }
    end

    assert_redirected_to moron_path(assigns(:moron))
  end

  test "should show moron" do
    get :show, id: @moron
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moron
    assert_response :success
  end

  test "should update moron" do
    patch :update, id: @moron, moron: { description: @moron.description, imgur: @moron.imgur }
    assert_redirected_to moron_path(assigns(:moron))
  end

  test "should destroy moron" do
    assert_difference('Moron.count', -1) do
      delete :destroy, id: @moron
    end

    assert_redirected_to morons_path
  end
end
