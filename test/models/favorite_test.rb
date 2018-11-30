require 'test_helper'

class FavoriteTest < ActiveSupport::TestCase

  def setup
    @favorite = Favorite.new(title: "ABC book", content: "This is nice!")
  end

  test "should be valid" do
    assert @favorite.valid?
  end

  test "title should be present" do
    @favorite.title = " "
    assert_not @favorite.valid?
  end

  test "content should be present" do
    @favorite.content = " "
    assert_not @favorite.valid?
  end

  test "order should be most recent first" do
    assert_equal favorites(:most_recent), Favorite.first
  end
end
