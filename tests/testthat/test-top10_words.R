test_that("top10_words function works correctly", {
  text <- "A character string containing example text. The cat sat on the mat, and the cat looked at the dog while the dog barked at the cat"

  result <- top10_words(text)

  expect_s3_class(result, "data.frame")
  expect_equal(nrow(result), 10)

  expect_equal(result$words[1], "cat")
  expect_equal(result$Freq[1], 3)

  expect_equal(result$words[2], "at")
  expect_equal(result$Freq[2], 2)

  expect_equal(result$words[3], "dog")
  expect_equal(result$Freq[3], 2)

  expect_equal(result$words[4], "barked")
  expect_equal(result$Freq[4], 1)

  expect_equal(result$words[5], "character")
  expect_equal(result$Freq[5], 1)

  expect_equal(result$words[6], "containing")
  expect_equal(result$Freq[6], 1)

  expect_equal(result$words[7], "example")
  expect_equal(result$Freq[7], 1)

  expect_equal(result$words[8], "looked")
  expect_equal(result$Freq[8], 1)

  expect_equal(result$words[9], "mat")
  expect_equal(result$Freq[9], 1)

  expect_equal(result$words[10], "on")
  expect_equal(result$Freq[10], 1)
})
