#' The 10 Most Frequent Words
#'
#' This function counts the 10 most frequent words in the input text,
#' excluding common words like "the" in English and Dutch.
#'
#' @importFrom utils head
#'
#' @param text A character string containing the text to analyze.
#' @return A vector of the top 10 most frequent words and their counts.
#' @export
#'
#' @examples
#' #How to use top10_words()
#' text <- "A character string containing example text.
#' The cat sat on the mat, and the cat looked at the dog while the dog barked at the cat"
#' top10_words(text)
#'

top10_words <- function(text) {
  # Common words to exclude in English and Dutch.
  exclude_words <- c("de", "het", "een", "en", "van", "dus", "met", "is", "in",
                     "the", "a", "an", "from", "so", "with", "and", "is", "in")

  # Remove punctuation from input text
  text <- gsub("[[:punct:]]", "", text)

  # Extract words and convert into all lower case.
  words <- unlist(strsplit(tolower(text), "\\s+"))

  # Remove exclude_words from words
  words <- words[!words %in% exclude_words]

  # Check if words vector is empty
  if (length(words) == 0) {
    return(data.frame(words = character(0), Freq = integer(0)))
  }

  # Amount per word in table
  words_amount <- table(words)

  # Sort in decreasing order
  sort_words <- sort(words_amount, decreasing = TRUE)

  # Show top 10 most frequent words and convert to data frame
  top_words_df <- as.data.frame(head(sort_words, 10))
  colnames(top_words_df) <- c("words", "Freq")

  # Convert the 'words' column to character
  top_words_df$words <- as.character(top_words_df$words)

  return(top_words_df)
}
