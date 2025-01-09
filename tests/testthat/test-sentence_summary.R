test_that("sentence_summary function works correctly with valid inputs", {
  # Test with a normal multi-sentence input
  text <- "This is an example. It has more than two sentences! Well, this is the third."
  result <- sentence_summary(text)

  # Check the class of the result
  expect_s3_class(result, "sentence_summary")

  # Check the structure of the result
  expect_equal(names(result), c(
    "sentence_count",
    "avg_sentence_length",
    "longest_sentence",
    "shortest_sentence",
    "readability_score"
  ))

  # Validate outputs
  expect_equal(result$sentence_count, 3)
  expect_equal(result$avg_sentence_length, 5.00, tolerance = 1e-5)
  expect_equal(result$longest_sentence, " It has more than two sentences")
  expect_equal(result$shortest_sentence, "This is an example")
  expect_equal(result$readability_score, -147.92, tolerance = 1e-5)

  # Test with a single sentence
  single_sentence <- "A single sentence."
  single_result <- sentence_summary(single_sentence)

  expect_equal(single_result$sentence_count, 1)
  expect_equal(single_result$avg_sentence_length, 3.00, tolerance = 1e-5)
  expect_equal(single_result$longest_sentence, "A single sentence")
  expect_equal(single_result$shortest_sentence, "A single sentence")
  expect_true(!is.na(single_result$readability_score))

})
