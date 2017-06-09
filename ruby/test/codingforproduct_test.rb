require 'minitest/autorun'
require './codingforproduct_class'

class TestTitle < Minitest::Test

  def setup
    @title = Title.new
  end

  def test_truncate
    test_hash = {title: "really, really, really long title that will be chopped off", link: 'example.com'}
    full_title = test_hash[:title]
    assert_equal "really, really, really long title that will be cho...", @title.truncate(full_title)
  end

  def test_do_not_truncate
    test_hash2 = {title: "Google", link: 'example.com'}
    full_title = test_hash2[:title]
    assert_equal "Google", @title.truncate(full_title)
  end

  def test_link_title
    assert_equal "<a href=\"example.com\">really, really, really long title that will be cho...</a>",
    @title.link_title({title: "really, really, really long title that will be cho...", link: 'example.com'})
  end

  def test_link_titles
    titles_and_links = [
      {title: 'Github',link: 'github.com'},
      {title: 'Google',link: 'google.com'},
      {title: 'really, really, really long title that will be chopped off',link: 'example.com'}
    ]
    assert_equal ["<a href=\"github.com\">Github</a>",
                  "<a href=\"google.com\">Google</a>",
                  "<a href=\"example.com\">really, really, really long title that will be cho...</a>"],
    @title.link_titles(titles_and_links)
  end
end
