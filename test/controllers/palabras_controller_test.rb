require 'test_helper'

class PalabrasControllerTest < ActionController::TestCase
  setup do
    @palabra = palabras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:palabras)
  end

  test "should create palabra" do
    assert_difference('Palabra.count') do
      post :create, palabra: { descripcion: @palabra.descripcion, nombre: @palabra.nombre }
    end

    assert_response 201
  end

  test "should show palabra" do
    get :show, id: @palabra
    assert_response :success
  end

  test "should update palabra" do
    put :update, id: @palabra, palabra: { descripcion: @palabra.descripcion, nombre: @palabra.nombre }
    assert_response 204
  end

  test "should destroy palabra" do
    assert_difference('Palabra.count', -1) do
      delete :destroy, id: @palabra
    end

    assert_response 204
  end
end
