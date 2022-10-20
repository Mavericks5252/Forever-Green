require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get products" do
    get home_products_url
    assert_response :success
  end

  test "should get aboutus" do
    get home_aboutus_url
    assert_response :success
  end

end
