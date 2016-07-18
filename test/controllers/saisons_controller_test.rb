require 'test_helper'

class SaisonsControllerTest < ActionController::TestCase
  setup do
    @saison = saisons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saisons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saison" do
    assert_difference('Saison.count') do
      post :create, saison: { annee: @saison.annee, ligue: @saison.ligue, sport: @saison.sport }
    end

    assert_redirected_to saison_path(assigns(:saison))
  end

  test "should show saison" do
    get :show, id: @saison
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saison
    assert_response :success
  end

  test "should update saison" do
    patch :update, id: @saison, saison: { annee: @saison.annee, ligue: @saison.ligue, sport: @saison.sport }
    assert_redirected_to saison_path(assigns(:saison))
  end

  test "should destroy saison" do
    assert_difference('Saison.count', -1) do
      delete :destroy, id: @saison
    end

    assert_redirected_to saisons_path
  end
end
