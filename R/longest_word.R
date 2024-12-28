longest_words <- function(text) {
  #make lines out of the text
  lines <- unlist(strsplit(text, "\n"))
  #make objects
  longest_word <-  " "
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
        longest_word <- word
        longest_length <- word_length
        place <- list(line = line_number, index = which(words == word))
      }
    }
  }

  #list of longest word with length and position
  list(word = longest_word, length = longest_length, position = place)

}
