require "test_helper"

class PrinciplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @principle = principles(:one)
  end

  test "should get index" do
    get principles_url, as: :json
    assert_response :success
  end

  test "should create principle" do
    assert_difference("Principle.count") do
      post principles_url, params: { principle: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show principle" do
    get principle_url(@principle), as: :json
    assert_response :success
  end

  test "should update principle" do
    patch principle_url(@principle), params: { principle: {  } }, as: :json
    assert_response :success
  end

  test "should destroy principle" do
    assert_difference("Principle.count", -1) do
      delete principle_url(@principle), as: :json
    end

    assert_response :no_content
  end
end
