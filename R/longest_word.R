#' The Longest Word
#'
#' This function identifies the longest word, its position and its length in input the text.
#'
#' @param text A character string containing the text to analyze.
#'
#' @return A data frame with the longest word, its position and length.
#' @export
#'
#' @examples
#' #How to use longest_word()
#' text <- "A sentence with words of varying lengths as an example"
#' longest_word(text)
longest_word <- function(text) {
  #make lines out of the text
  lines <- unlist(strsplit(text, "\n"))
  #make objects
  long_word <-  " "
  longest_length <- 0
  place <-  NULL

  #loop for each word
  for (line in seq_along(lines)) {
    words <- unlist(strsplit(lines[line], "\\s+"))
    #count the length of each word
    for (word in words) {
      word_length <- nchar(word)

      #checks if current word is longer than the previous longest word
      if (word_length > longest_length) {
        long_word <- word
        longest_length <- word_length
        place <- list(line = line, index = which(words == word))
      }
    }
  }


  #list with the results
  list(
    word = long_word,
    length = longest_length,
    position = place
  )
}

