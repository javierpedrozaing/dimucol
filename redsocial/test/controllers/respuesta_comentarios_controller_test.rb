require 'test_helper'

class RespuestaComentariosControllerTest < ActionController::TestCase
  setup do
    @respuesta_comentario = respuesta_comentarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:respuesta_comentarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create respuesta_comentario" do
    assert_difference('RespuestaComentario.count') do
      post :create, respuesta_comentario: { fecha: @respuesta_comentario.fecha, like: @respuesta_comentario.like, texto: @respuesta_comentario.texto }
    end

    assert_redirected_to respuesta_comentario_path(assigns(:respuesta_comentario))
  end

  test "should show respuesta_comentario" do
    get :show, id: @respuesta_comentario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @respuesta_comentario
    assert_response :success
  end

  test "should update respuesta_comentario" do
    patch :update, id: @respuesta_comentario, respuesta_comentario: { fecha: @respuesta_comentario.fecha, like: @respuesta_comentario.like, texto: @respuesta_comentario.texto }
    assert_redirected_to respuesta_comentario_path(assigns(:respuesta_comentario))
  end

  test "should destroy respuesta_comentario" do
    assert_difference('RespuestaComentario.count', -1) do
      delete :destroy, id: @respuesta_comentario
    end

    assert_redirected_to respuesta_comentarios_path
  end
end
