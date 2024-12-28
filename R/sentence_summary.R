sentence_summary <- function(text) {
  # Split the text into sentences based on punctuation marks
  sentences <- unlist(strsplit(text, "[.!?]"))

  # Count the number of sentences
  sentence_count <- length(sentences)

  # Initialize a vector to store word counts
  word_counts <- numeric(sentence_count)

  # Loop through each sentence to calculate the word count
  for (y in 1:sentence_count) {
    # Split the current sentence into words and count them
    words <- unlist(strsplit(sentences[y], "\\s+"))
    word_counts[y] <- length(words)
  }

  # Calculate the average word count per sentence
  avg_word_count <- mean(word_counts)

  # Return a list with the results
  list(
    sentence_count = sentence_count,
    average_word_count = avg_word_count
  )
}
