test_that("text_summary function works ", {
  text <- "A random example text. It has punctuation. It's also has a bunch of nonsense."

  result <- text_summary(text)

  expect_s3_class(result, "text_summary")

  expect_equal(names(result), c("word_count", "sentence_count", "average_word_length"))

  expect_equal(result$word_count, 14)  # Total words in the text

  expect_equal(result$sentence_count, 3)  # Total sentences in the text

  expect_equal(result$avg_word_length, NULL, tolerance = 1e-5)  # Average length of words
})
