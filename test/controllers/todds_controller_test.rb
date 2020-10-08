require 'test_helper'

class ToddsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todd = todds(:one)
  end

  test "should get index" do
    get todds_url, as: :json
    assert_response :success
  end

  test "should create todd" do
    assert_difference('Todd.count') do
      post todds_url, params: { todd: { task: @todd.task } }, as: :json
    end

    assert_response 201
  end

  test "should show todd" do
    get todd_url(@todd), as: :json
    assert_response :success
  end

  test "should update todd" do
    patch todd_url(@todd), params: { todd: { task: @todd.task } }, as: :json
    assert_response 200
  end

  test "should destroy todd" do
    assert_difference('Todd.count', -1) do
      delete todd_url(@todd), as: :json
    end

    assert_response 204
  end
end
