require 'test_helper'

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get favorites" do
    get favorites_url
    assert_response :success
    assert_select "title", "Favorites | sachi"
  end

end
