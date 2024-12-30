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
  # Split text into sentences based on .!?
  sentences <- unlist(strsplit(text, "[.!?]"))

  # Remove empty sentences
  sentences <- sentences[nzchar(trimws(sentences))]

  # Count sentences
  sentence_count <- length(sentences)

  # If there are no sentences, return a list with counts set to zero
  if (sentence_count == 0) {
    return(list(sentence_count = 0, avg_word_count = NA))
  }

  # Object for word counts
  word_counts <- numeric(sentence_count)

  # Loop for counting of words
  for (y in 1:sentence_count) {
    # Split the current sentence into words and count them
    words <- unlist(strsplit(trimws(sentences[y]), "\\s+"))
    word_counts[y] <- length(words)
  }

  # Mean word count per sentence
  avg_word_count <- mean(word_counts)

  # List with sentence_count and average word count per sentence
  return(structure(list(sentence_count = sentence_count,
                        avg_word_count = avg_word_count),
                   class = "sentence_summary"))
}
