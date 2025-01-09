# text.analyzer

<!-- badges: start -->
<!-- badges: end -->

The goal of text.analyzer is to help with analyzing a piece of text quicker and more effective in R. 

## Installation

You can install the development version of text.analyzer from [GitHub](https://github.com/YusraKunduzi/text.analyzer) with:
devtools::install_github("YusraKunduzi/text.analyzer")

## Features

**text_summary** summarizes:
- Word count
- Sentence count
- Average word length

**longest_word** identifies the longest word and its position in text.

**top10_words** counts the 10 most frequent words in the text, excluding common words like "the".

**sentence_summary** summarizes:
- Total number of sentences
- Average wordcount per sentence
- Longest and shortest sentences
- Readability score


``` r
# install.packages("pak")
pak::pak("YusraKunduzi/text.analyzer")
```

## Example

This is a basic example which shows you how to use the text.analyzer:

``` r
library(text.analyzer)

#Example text
text <- "This is a basic example. It has multiple sentences!
         All the sentences are divided by exclamation marks, questions marks or periods.
         Try it out and have fun!"

#How to use text_summary
sum <- text_summary(text)
print(text_sum)

#How to use longest_word
longest <- longest_word(text)
print(longest)

#How to use top10_words
top <- top10_words(text)
print(top)

#sentences <- sentence_summary(text)
print(sentences)



```

