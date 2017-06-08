# Example 1 Jen Diamond ----------------------------------

# http://codingforproduct.com/coding_exercise

# Write a function that when given a key value pair with a title and url, the function will print a linked title.

# If the title is longer than 50 characters, truncate the title to 50 characters followed by 3 ellipses.
# To "print" use the print/console method from your programming language.

  def truncate(text, cutoff_length = 50, string_suffix = "...")
    if text.length >= cutoff_length
      truncated_text = text[0..cutoff_length-1] + string_suffix
    else
      text
    end
  end

  def link_title(title_link_hash)
    full_title = truncate(title_link_hash[:title])
    link = title_link_hash[:link]
    '<a href="' + link + '">'  + full_title + '</a>'
  end
puts "Example One:"
puts link_title({title: "really, really, really long title that will be chopped off", link: 'example.com'})

# Example 2 Jen Diamond ----------------------------------

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

def link_titles(title_link_arr)
  result=[]
  titles_and_links = title_link_arr
  titles_and_links.each do |x|
    result << link_title(x)
  end
  result
end

puts "Example Two:"
puts link_titles(EX2)
