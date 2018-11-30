require 'test_helper'

class SmartphonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get smartphones_index_url
    assert_response :success
  end

  test "should get new" do
    get smartphones_new_url
    assert_response :success
  end

  test "should get create" do
    get smartphones_create_url
    assert_response :success
  end

end
