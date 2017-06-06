require 'minitest/autorun'
require './codingforproduct_class'

class TestTitle < Minitest::Test

  def setup
    @title = Title.new
  end

  def test_truncate
    test_hash = {title: "really, really, really long title that will be chopped off", link: 'example.com'}
    full_title = test_hash[:title]
    assert_equal "really, really, really long title that will be ch...", @title.truncate(full_title)
  end

  def test_do_not_truncate
    test_hash2 = {title: "Google", link: 'example.com'}
    full_title = test_hash2[:title]
    assert_equal "Google", @title.truncate(full_title)
  end

  def test_link_title
    assert_equal "<a href=\"example.com\">really, really, really long title that will be chopped off</a>",
    @title.link_title({title: "really, really, really long title that will be chopped off", link: 'example.com'})
  end
end
