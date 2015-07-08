require 'test_helper'

class RacesControllerTest < ActionController::TestCase
  setup do
    @race = races(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:races)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create race" do
    assert_difference('Race.count') do
      post :create, race: { circuit: @race.circuit, city: @race.city, country: @race.country, distance: @race.distance, from_date: @race.from_date, image: @race.image, laps: @race.laps, length: @race.length, name: @race.name, to_date: @race.to_date }
    end

    assert_redirected_to race_path(assigns(:race))
  end

  test "should show race" do
    get :show, id: @race
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @race
    assert_response :success
  end

  test "should update race" do
    put :update, id: @race, race: { circuit: @race.circuit, city: @race.city, country: @race.country, distance: @race.distance, from_date: @race.from_date, image: @race.image, laps: @race.laps, length: @race.length, name: @race.name, to_date: @race.to_date }
    assert_redirected_to race_path(assigns(:race))
  end

  test "should destroy race" do
    assert_difference('Race.count', -1) do
      delete :destroy, id: @race
    end

    assert_redirected_to races_path
  end
end
