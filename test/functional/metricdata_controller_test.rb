require 'test_helper'

class MetricdataControllerTest < ActionController::TestCase
  setup do
    @metricdatum = metricdata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:metricdata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metricdatum" do
    assert_difference('Metricdatum.count') do
      post :create, metricdatum: { adddate: @metricdatum.adddate, name: @metricdatum.name, value: @metricdatum.value }
    end

    assert_redirected_to metricdatum_path(assigns(:metricdatum))
  end

  test "should show metricdatum" do
    get :show, id: @metricdatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metricdatum
    assert_response :success
  end

  test "should update metricdatum" do
    put :update, id: @metricdatum, metricdatum: { adddate: @metricdatum.adddate, name: @metricdatum.name, value: @metricdatum.value }
    assert_redirected_to metricdatum_path(assigns(:metricdatum))
  end

  test "should destroy metricdatum" do
    assert_difference('Metricdatum.count', -1) do
      delete :destroy, id: @metricdatum
    end

    assert_redirected_to metricdata_path
  end
end
