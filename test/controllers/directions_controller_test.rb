require 'test_helper'

class DirectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @direction = directions(:one)
  end

  test "should get index" do
    get directions_url, as: :json
    assert_response :success
  end

  test "should create direction" do
    assert_difference('Direction.count') do
      post directions_url, params: { direction: { content: @direction.content, load_id: @direction.load_id } }, as: :json
    end

    assert_response 201
  end

  test "should show direction" do
    get direction_url(@direction), as: :json
    assert_response :success
  end

  test "should update direction" do
    patch direction_url(@direction), params: { direction: { content: @direction.content, load_id: @direction.load_id } }, as: :json
    assert_response 200
  end

  test "should destroy direction" do
    assert_difference('Direction.count', -1) do
      delete direction_url(@direction), as: :json
    end

    assert_response 204
  end
end
