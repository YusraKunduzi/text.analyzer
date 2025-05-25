#' Sentence Summary
#'
#' This function summarizes each sentence of the input text
#' by counting the sentences, calculating the average sentence length,
#' calculating the readability score and giving you the longest and shortest sentences of your input.
#'
#'
#' @param text character string containing the text to analyze. The text should
#' be composed of sentences separated by periods (.), exclamation marks (!), or
#' question marks (?).
#'
#' @return A list containing the sentence count, average word count, longest word, shortest word and readability score.
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
    return(list(
      sentence_count = 0,
      avg_sentence_length = NA,
      longest_sentence = NA,
      shortest_sentence = NA,
      readability_score = NA
    ))
  }

  # Calculate sentence lengths (in words)
  sentence_lengths <- sapply(sentences, function(sentence) {
    length(unlist(strsplit(trimws(sentence), "\\s+")))
  })

  # Identify the longest and shortest sentences
  longest_sentence <- sentences[which.max(sentence_lengths)]
  shortest_sentence <- sentences[which.min(sentence_lengths)]

  # Calculate average sentence length
  avg_sentence_length <- mean(sentence_lengths)

  # Compute a basic readability score (e.g., Flesch-Kincaid-like formula)
  words <- unlist(strsplit(text, "\\s+"))
  avg_word_length <- sum(nchar(words)) / length(words)

  readability_score <- 206.835 -
    (1.015 * avg_sentence_length) -
    (84.6 * avg_word_length)


  # List
  return(structure(list(
    sentence_count = sentence_count,
    avg_sentence_length = avg_sentence_length,
    longest_sentence = longest_sentence,
    shortest_sentence = shortest_sentence,
    readability_score = readability_score
  ), class = "sentence_summary"))
}
