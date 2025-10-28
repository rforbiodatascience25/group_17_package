test_that("set_reading_frame works", {
  expect_identical(set_reading_frame("CAUGAUG",2), c("AUG","AUG"))
})
