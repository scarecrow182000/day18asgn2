require 'test_helper'

class MovieRentalsControllerTest < ActionController::TestCase
  setup do
    @movie_rental = movie_rentals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_rentals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_rental" do
    assert_difference('MovieRental.count') do
      post :create, movie_rental: { movie_id: @movie_rental.movie_id, user_id: @movie_rental.user_id }
    end

    assert_redirected_to movie_rental_path(assigns(:movie_rental))
  end

  test "should show movie_rental" do
    get :show, id: @movie_rental
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_rental
    assert_response :success
  end

  test "should update movie_rental" do
    patch :update, id: @movie_rental, movie_rental: { movie_id: @movie_rental.movie_id, user_id: @movie_rental.user_id }
    assert_redirected_to movie_rental_path(assigns(:movie_rental))
  end

  test "should destroy movie_rental" do
    assert_difference('MovieRental.count', -1) do
      delete :destroy, id: @movie_rental
    end

    assert_redirected_to movie_rentals_path
  end
end
