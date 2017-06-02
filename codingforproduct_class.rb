class Title

  # Example 1 Jen Diamond ----------------------------------

  # http://codingforproduct.com/coding_exercise.html

  def truncate(text, cutoff_length = 50, string_suffix = "...")
    text_length = cutoff_length - string_suffix.length
    shortened_text = text[0..text_length+1]
    shortened_text + string_suffix
  end

  def linked_title(given_hash)
    full_title = given_hash[:title]
    link = given_hash[:link]  

    if full_title.length >= 50
      truncated_title = truncate(full_title)
      '<a href="' + link + '">'  + truncated_title + '</a>'
    else
      '<a href="' + link + '">'  + full_title + '</a>'
    end
  end

  #puts "Example One:"
  #puts linked_title({title: "really, really, really long title that will be chopped off", link: 'example.com'})

  # Example 2 Jen Diamond ----------------------------------


  def linked_titles(title_link_arr)
    result=[]
    titles_and_links = title_link_arr
    titles_and_links.each do |x|
      result << linked_title(x)
    end
    result
  end

  #puts "Example Two:"
  #puts linked_title_array(EX2)

end

# ----------------------------------

EX2 = [
  {
    title: 'Github',
    link: 'github.com'
  },
  {
    title: 'Google',
    link: 'google.com'
  },
  {
    title: 'really, really, really long title that will be chopped off',
    link: 'example.com'
  }
]

t = Title.new
p t.linked_title({title: "really, really, really long title that will be chopped off", link: 'example.com'})
p t.linked_titles(EX2)


