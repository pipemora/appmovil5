require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { color: @survey.color, compania: @survey.compania, dispuesto: @survey.dispuesto, economizar: @survey.economizar, edad: @survey.edad, eres: @survey.eres, factores: @survey.factores, genero: @survey.genero, importante: @survey.importante, lineas: @survey.lineas, presupuesto: @survey.presupuesto }
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    patch :update, id: @survey, survey: { color: @survey.color, compania: @survey.compania, dispuesto: @survey.dispuesto, economizar: @survey.economizar, edad: @survey.edad, eres: @survey.eres, factores: @survey.factores, genero: @survey.genero, importante: @survey.importante, lineas: @survey.lineas, presupuesto: @survey.presupuesto }
    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end
