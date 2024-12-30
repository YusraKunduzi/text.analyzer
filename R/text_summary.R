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
  # Split text into words
  words <- unlist(strsplit(text, "\\s+"))

  # Count words
  word_count <- length(words)

  # Split text into sentences
  sentences <- unlist(strsplit(text, "[.!?]"))

  # Remove empty sentences
  sentences <- sentences[nzchar(trimws(sentences))]

  # Count sentences
  sentence_count <- length(sentences)

  # Calculate average word length
  average_word_length <- mean(nchar(words), na.rm = TRUE)

  # Return a list
  return(structure(list(word_count = word_count,
                        sentence_count = sentence_count,
                        average_word_length = average_word_length),
                   class = "text_summary"))
  }
