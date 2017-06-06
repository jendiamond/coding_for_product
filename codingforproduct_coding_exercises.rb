# Example 1 Jen Diamond ----------------------------------

# http://codingforproduct.com/coding_exercise.html

def truncate(text, cutoff_length = 50, string_suffix = "...")
  if text.length >= cutoff_length
    text_length = cutoff_length - string_suffix.length
    shortened_text = text[0..text_length+1]
    shortened_text + string_suffix
  else
    text
  end
end

def link_title(given_hash)
  full_title = given_hash[:title]
  link = given_hash[:link]
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
