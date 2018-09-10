require 'test_helper'

class Recipe1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe1 = recipe1s(:one)
  end

  test "should get index" do
    get recipe1s_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe1_url
    assert_response :success
  end

  test "should create recipe1" do
    assert_difference('Recipe1.count') do
      post recipe1s_url, params: { recipe1: { instructions: @recipe1.instructions, title: @recipe1.title } }
    end

    assert_redirected_to recipe1_url(Recipe1.last)
  end

  test "should show recipe1" do
    get recipe1_url(@recipe1)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe1_url(@recipe1)
    assert_response :success
  end

  test "should update recipe1" do
    patch recipe1_url(@recipe1), params: { recipe1: { instructions: @recipe1.instructions, title: @recipe1.title } }
    assert_redirected_to recipe1_url(@recipe1)
  end

  test "should destroy recipe1" do
    assert_difference('Recipe1.count', -1) do
      delete recipe1_url(@recipe1)
    end

    assert_redirected_to recipe1s_url
  end
end
