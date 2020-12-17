require 'test_helper'

class GroceryListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grocery_list = grocery_lists(:one)
  end

  test "should get index" do
    get grocery_lists_url, as: :json
    assert_response :success
  end

  test "should create grocery_list" do
    assert_difference('GroceryList.count') do
      post grocery_lists_url, params: { grocery_list: { aisle: @grocery_list.aisle, items: @grocery_list.items, user_id: @grocery_list.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show grocery_list" do
    get grocery_list_url(@grocery_list), as: :json
    assert_response :success
  end

  test "should update grocery_list" do
    patch grocery_list_url(@grocery_list), params: { grocery_list: { aisle: @grocery_list.aisle, items: @grocery_list.items, user_id: @grocery_list.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy grocery_list" do
    assert_difference('GroceryList.count', -1) do
      delete grocery_list_url(@grocery_list), as: :json
    end

    assert_response 204
  end
end
