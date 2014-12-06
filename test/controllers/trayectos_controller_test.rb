require 'test_helper'

class TrayectosControllerTest < ActionController::TestCase
  setup do
    @trayecto = trayectos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trayectos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trayecto" do
    assert_difference('Trayecto.count') do
      post :create, trayecto: { hora_llegada: @trayecto.hora_llegada, hora_salida: @trayecto.hora_salida, id_trayecto: @trayecto.id_trayecto, idautobus: @trayecto.idautobus, idterminal2: @trayecto.idterminal2, idterminal: @trayecto.idterminal, precio: @trayecto.precio, puntos: @trayecto.puntos }
    end

    assert_redirected_to trayecto_path(assigns(:trayecto))
  end

  test "should show trayecto" do
    get :show, id: @trayecto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trayecto
    assert_response :success
  end

  test "should update trayecto" do
    patch :update, id: @trayecto, trayecto: { hora_llegada: @trayecto.hora_llegada, hora_salida: @trayecto.hora_salida, id_trayecto: @trayecto.id_trayecto, idautobus: @trayecto.idautobus, idterminal2: @trayecto.idterminal2, idterminal: @trayecto.idterminal, precio: @trayecto.precio, puntos: @trayecto.puntos }
    assert_redirected_to trayecto_path(assigns(:trayecto))
  end

  test "should destroy trayecto" do
    assert_difference('Trayecto.count', -1) do
      delete :destroy, id: @trayecto
    end

    assert_redirected_to trayectos_path
  end
end
