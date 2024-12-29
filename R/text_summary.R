#' Text Summary
#'
#' This function summarizes the input text by counting the total number of words,
#' the totale number of sentences and average word length.
#'
#' @param text A character string containing the text to analyze.
#'
#' @return A list containing the total number of words,
#' the total number of sentences and the average word length.
#' @export
#'
#' @examples
#' #How to use text_summary()
#' text <- "A random example text.
#' It has punctuation. It's also has a bunch of nonsense"
#' text_summary(text)
text_summary <- function(text) {
  #extract words from text.
  words <- unlist(strsplit(text, "\\s+"))
  #extract sentences from text.
  sentences <- unlist(strsplit(text, "[.!?]"))
  #average length of words in an object
  average_word_length <- mean(nchar(words))


  cat("Word Count:", length(words), "\n")
  cat("Sentence Count:", length(sentences), "\n")
  cat("Average Word Length:", average_word_length, "\n")

}
