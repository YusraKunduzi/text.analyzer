test_that("longest_word function works", {
  text <- "A sentence with words of varying lengths as an example"
  result <- longest_word(text)

  expect_equal(result$word, "sentence")
  expect_equal(result$length, 8)

  expect_equal(result$position$line, 1)
  expect_equal(result$position$index, 2)
})
