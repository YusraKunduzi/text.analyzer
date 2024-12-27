text_summary <- function(text) {
  #extract words from text.
  words <- unlist(strsplit(text, "\\s+"))
  #extract sentences from text.
  sentences <- unlist(strsplit(text, "[.!?]"))
  #average length of words in an object
  average_word_length <- mean(nchar(words))

  #output of function
  list(
    word_count = length(words),
    sentence_count = length(sentences),
    average_word_length = average_word_length
  )
}
