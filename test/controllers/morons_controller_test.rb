require 'test_helper'

class MoronsControllerTest < ActionController::TestCase
  setup do
    @moron = morons(:one)
    @update = {
      imgur:   'http://i.imgur.com/lsoomRq.jpg',
      description: 'Look at this little boss.'
    }
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
      post :create, moron: @update
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
    patch :update, id: @moron, moron: @update
    assert_redirected_to moron_path(assigns(:moron))
  end

  test "should destroy moron" do
    assert_difference('Moron.count', -1) do
      delete :destroy, id: @moron
    end

    assert_redirected_to morons_path
  end
end
