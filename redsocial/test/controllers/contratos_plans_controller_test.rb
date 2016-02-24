require 'test_helper'

class ContratosPlansControllerTest < ActionController::TestCase
  setup do
    @contratos_plan = contratos_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contratos_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contratos_plan" do
    assert_difference('ContratosPlan.count') do
      post :create, contratos_plan: { valorTotal: @contratos_plan.valorTotal }
    end

    assert_redirected_to contratos_plan_path(assigns(:contratos_plan))
  end

  test "should show contratos_plan" do
    get :show, id: @contratos_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contratos_plan
    assert_response :success
  end

  test "should update contratos_plan" do
    patch :update, id: @contratos_plan, contratos_plan: { valorTotal: @contratos_plan.valorTotal }
    assert_redirected_to contratos_plan_path(assigns(:contratos_plan))
  end

  test "should destroy contratos_plan" do
    assert_difference('ContratosPlan.count', -1) do
      delete :destroy, id: @contratos_plan
    end

    assert_redirected_to contratos_plans_path
  end
end
