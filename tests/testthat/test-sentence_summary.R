test_that("sentence_summary function works", {
  text <- "This is an example. It has more than two sentences! Well, this is the third."

  result <- sentence_summary(text)

  expect_s3_class(result, "sentence_summary")

  expect_equal(names(result), c("sentence_count", "avg_word_count"))

  expect_equal(result$sentence_count, 3)

  expect_equal(result$avg_word_count, 5.00, tolerance = 1e-5)
})
