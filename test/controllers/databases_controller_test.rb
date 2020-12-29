require 'test_helper'

class DatabasesControllerTest < ActionDispatch::IntegrationTest
  test "should get random" do
    get databases_random_url
    assert_response :success
  end

  test "should get search" do
    get databases_search_url
    assert_response :success
  end

  test "should get instructions" do
    get databases_instructions_url
    assert_response :success
  end

  test "should get information" do
    get databases_information_url
    assert_response :success
  end

end
