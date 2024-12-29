#' Sentence Summary
#'
#' This function summarizes each sentence of the input text
#' by counting the sentences and calculating the average number of words per sentence.
#'
#'
#' @param text character string containing the text to analyze. The text should
#' be composed of sentences separated by periods (.), exclamation marks (!), or
#' question marks (?).
#'
#' @return A list containing the sentence count and average word count
#' @export
#'
#' @examples
#' #How to use sentence_summary()
#' text <-  "This is an example. It has more than two sentences! Well, this is the third."
#' sentence_summary(text)
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
