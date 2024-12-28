top10_words <- function(text) {
  #common words to exclude in English and Dutch.
  exclude_words <- c("de", "het", "een", "en", "van", "dus", "met", "is", "in", "van", "the", "a", "an", "from", "so", "with", "and", "is", "in")
  #extract words and convert into all lower case.
  words <- unlist(strsplit(tolower(text), "\\s+"))
  #remove exclude_words from words
  words <- words[!words %in% exclude_words]
  #amount per word in table
  words_amount <- table(words)
  #sort in descreasing order
  sort_words <- sort(words_amount, descreasing = TRUE)
  #show top 10 most frequent words
  head(sort_words, 10)
}
