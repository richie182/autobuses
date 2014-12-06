require 'test_helper'

class TerminalLlegadasControllerTest < ActionController::TestCase
  setup do
    @terminal_llegada = terminal_llegadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:terminal_llegadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create terminal_llegada" do
    assert_difference('TerminalLlegada.count') do
      post :create, terminal_llegada: { direccion2: @terminal_llegada.direccion2, idterminal2: @terminal_llegada.idterminal2, nombreterminal2: @terminal_llegada.nombreterminal2, telefono2: @terminal_llegada.telefono2 }
    end

    assert_redirected_to terminal_llegada_path(assigns(:terminal_llegada))
  end

  test "should show terminal_llegada" do
    get :show, id: @terminal_llegada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @terminal_llegada
    assert_response :success
  end

  test "should update terminal_llegada" do
    patch :update, id: @terminal_llegada, terminal_llegada: { direccion2: @terminal_llegada.direccion2, idterminal2: @terminal_llegada.idterminal2, nombreterminal2: @terminal_llegada.nombreterminal2, telefono2: @terminal_llegada.telefono2 }
    assert_redirected_to terminal_llegada_path(assigns(:terminal_llegada))
  end

  test "should destroy terminal_llegada" do
    assert_difference('TerminalLlegada.count', -1) do
      delete :destroy, id: @terminal_llegada
    end

    assert_redirected_to terminal_llegadas_path
  end
end
