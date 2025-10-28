test_that("rnd_dna_sample returns a random dna sample of correct type and length", {
  result <- rnd_dna_sample(15)
  expect_type(result,"character")
  expect_equal(nchar(result),15)
})
