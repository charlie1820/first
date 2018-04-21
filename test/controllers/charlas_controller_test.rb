require 'test_helper'

class CharlasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charla = charlas(:one)
  end

  test "should get index" do
    get charlas_url
    assert_response :success
  end

  test "should get new" do
    get new_charla_url
    assert_response :success
  end

  test "should create charla" do
    assert_difference('Charla.count') do
      post charlas_url, params: { charla: {  } }
    end

    assert_redirected_to charla_url(Charla.last)
  end

  test "should show charla" do
    get charla_url(@charla)
    assert_response :success
  end

  test "should get edit" do
    get edit_charla_url(@charla)
    assert_response :success
  end

  test "should update charla" do
    patch charla_url(@charla), params: { charla: {  } }
    assert_redirected_to charla_url(@charla)
  end

  test "should destroy charla" do
    assert_difference('Charla.count', -1) do
      delete charla_url(@charla)
    end

    assert_redirected_to charlas_url
  end
end
