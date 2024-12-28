sentence_summary <- function(text) {
  #split txt into sentences based on .?!
  sentences <- unlist(strsplit(text, "[.!?]"))

  #count sentence
  sentence_count <- length(sentences)

  #object for word counts
  word_counts <- numeric(sentence_count)

  #loop for counting of words
  for (y in 1:sentence_count) {
    # Split the current sentence into words and count them
    words <- unlist(strsplit(sentences[y], "\\s+"))
    word_counts[y] <- length(words)
  }

  #mean word_count per sentence
  avg_word_count <- mean(word_counts)

  #list with sentence_count and average word count per sentence
  list(
    sentence_count = sentence_count,
    average_word_count = avg_word_count
  )
}
