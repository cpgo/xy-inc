require 'test_helper'

class PoisControllerTest < ActionDispatch::IntegrationTest
  test "index lists all pois" do
    get "/poi"
    assert(JSON.parse(@response.body).count, 6)
    assert_equal(@response.content_type, "application/json")
  end

  test "create with invalid params renders errors" do
    invalid_params = {poi: {y: -1}}
    post "/poi", params: invalid_params
    errors = {
              name: ["can't be blank"],
              x: ["can't be blank", "is not a number"],
              y: ["must be greater than 0"]
            }
    assert_equal(@response.body, errors.to_json)
  end

  test "create with valid params renders the poi" do
    valid_params = {poi: {x: 10, y: 15, name: "POI name"}}
    post "/poi", params: valid_params
    json_response = JSON.parse(@response.body)
    assert_equal(json_response["x"], valid_params[:poi][:x])
    assert_equal(json_response["y"], valid_params[:poi][:y])
    assert_equal(json_response["name"], valid_params[:poi][:name])
  end
end