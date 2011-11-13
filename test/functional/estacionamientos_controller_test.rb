require 'test_helper'

class EstacionamientosControllerTest < ActionController::TestCase
  setup do
    @estacionamiento = estacionamientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estacionamientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estacionamiento" do
    assert_difference('Estacionamiento.count') do
      post :create, estacionamiento: @estacionamiento.attributes
    end

    assert_redirected_to estacionamiento_path(assigns(:estacionamiento))
  end

  test "should show estacionamiento" do
    get :show, id: @estacionamiento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estacionamiento.to_param
    assert_response :success
  end

  test "should update estacionamiento" do
    put :update, id: @estacionamiento.to_param, estacionamiento: @estacionamiento.attributes
    assert_redirected_to estacionamiento_path(assigns(:estacionamiento))
  end

  test "should destroy estacionamiento" do
    assert_difference('Estacionamiento.count', -1) do
      delete :destroy, id: @estacionamiento.to_param
    end

    assert_redirected_to estacionamientos_path
  end
end
