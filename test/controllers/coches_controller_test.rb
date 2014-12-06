require 'test_helper'

class CochesControllerTest < ActionController::TestCase
  setup do
    @coch = coches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coch" do
    assert_difference('Coch.count') do
      post :create, coch: { matricula: @coch.matricula, user_id: @coch.user_id }
    end

    assert_redirected_to coch_path(assigns(:coch))
  end

  test "should show coch" do
    get :show, id: @coch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coch
    assert_response :success
  end

  test "should update coch" do
    patch :update, id: @coch, coch: { matricula: @coch.matricula, user_id: @coch.user_id }
    assert_redirected_to coch_path(assigns(:coch))
  end

  test "should destroy coch" do
    assert_difference('Coch.count', -1) do
      delete :destroy, id: @coch
    end

    assert_redirected_to coches_path
  end
end
