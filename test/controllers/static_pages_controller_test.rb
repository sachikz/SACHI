require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "sachi"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About | sachi"
  end

  test "should get contents" do
    get contents_url
    assert_response :success
    assert_select "title", "Contents | sachi"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact | sachi"
  end

end
