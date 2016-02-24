require 'test_helper'

class AnunciosControllerTest < ActionController::TestCase
  setup do
    @anuncio = anuncios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anuncios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anuncio" do
    assert_difference('Anuncio.count') do
      post :create, anuncio: { caracteristica: @anuncio.caracteristica, fechaFinal: @anuncio.fechaFinal, fechaInicial_datetime: @anuncio.fechaInicial_datetime, reference: @anuncio.reference, tipoAnuncio: @anuncio.tipoAnuncio, ubicacion: @anuncio.ubicacion, valor: @anuncio.valor }
    end

    assert_redirected_to anuncio_path(assigns(:anuncio))
  end

  test "should show anuncio" do
    get :show, id: @anuncio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anuncio
    assert_response :success
  end

  test "should update anuncio" do
    patch :update, id: @anuncio, anuncio: { caracteristica: @anuncio.caracteristica, fechaFinal: @anuncio.fechaFinal, fechaInicial_datetime: @anuncio.fechaInicial_datetime, reference: @anuncio.reference, tipoAnuncio: @anuncio.tipoAnuncio, ubicacion: @anuncio.ubicacion, valor: @anuncio.valor }
    assert_redirected_to anuncio_path(assigns(:anuncio))
  end

  test "should destroy anuncio" do
    assert_difference('Anuncio.count', -1) do
      delete :destroy, id: @anuncio
    end

    assert_redirected_to anuncios_path
  end
end
