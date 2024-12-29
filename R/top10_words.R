#' The 10 Most Frequent Words
#'
#' This function counts the 10 most frequent words in the input text,
#' excluding common words like "the" in English and Dutch.
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
  #Common words to exclude in English and Dutch.
  exclude_words <- c("de", "het", "een", "en", "van", "dus", "met", "is", "in",
                     "the", "a", "an", "from", "so", "with", "and", "is", "in")

  #remove punctuation from input text
  text <- gsub("[[:punct:]]", "", text)

  #Extract words and convert into all lower case.
  words <- unlist(strsplit(tolower(text), "\\s+"))

  #Remove exclude_words from words
  words <- words[!words %in% exclude_words]

  #Amount per word in table
  words_amount <- table(words)

  #Sort in decreasing order
  sort_words <- sort(words_amount, decreasing = TRUE)

  #Show top 10 most frequent words
  utils::head(sort_words, 10)
}
