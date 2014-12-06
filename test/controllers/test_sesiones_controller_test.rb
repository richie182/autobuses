require 'test_helper'

class TestSesionesControllerTest < ActionController::TestCase
  test "should get iniciar_sesion" do
    get :iniciar_sesion
    assert_response :success
  end

  test "should get cerrar_sesion" do
    get :cerrar_sesion
    assert_response :success
  end

  test "should get bienvenida" do
    get :bienvenida
    assert_response :success
  end

end
