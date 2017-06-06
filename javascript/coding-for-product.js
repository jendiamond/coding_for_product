def truncate(text)
  cutoff_length = 50
  string_suffix = "..."
  if text >= cutoff_length
    text_length = cutoff_length - string_suffix.length
    shortened_text = text[0..text_length+1]
    shortened_text + string_suffix
  else
    text
  end
end
