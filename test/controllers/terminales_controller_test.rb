require 'test_helper'

class TerminalesControllerTest < ActionController::TestCase
  setup do
    @terminale = terminales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:terminales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create terminale" do
    assert_difference('Terminale.count') do
      post :create, terminale: { direccion: @terminale.direccion, idterminal: @terminale.idterminal, nombreterminal: @terminale.nombreterminal, telefono: @terminale.telefono }
    end

    assert_redirected_to terminale_path(assigns(:terminale))
  end

  test "should show terminale" do
    get :show, id: @terminale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @terminale
    assert_response :success
  end

  test "should update terminale" do
    patch :update, id: @terminale, terminale: { direccion: @terminale.direccion, idterminal: @terminale.idterminal, nombreterminal: @terminale.nombreterminal, telefono: @terminale.telefono }
    assert_redirected_to terminale_path(assigns(:terminale))
  end

  test "should destroy terminale" do
    assert_difference('Terminale.count', -1) do
      delete :destroy, id: @terminale
    end

    assert_redirected_to terminales_path
  end
end
